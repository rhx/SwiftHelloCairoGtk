import CCairo
import Cairo
import Gtk

var drawingArea: DrawingArea!

let status = Application.run { app in
    let window = ApplicationWindowRef(application: app)
    window.title = "Hello, Window"
    window.setDefaultSize(width: 400, height: 90)

    drawingArea = DrawingArea()
    window.add(widget: drawingArea)

    drawingArea.onDraw {
        var cr = $1
        let sansSerif = "Sans"
        let normalSlant:  cairo_font_slant_t  = .normal
        let normalWeight: cairo_font_weight_t = .normal
        cr.setSource(red: 0, green: 0, blue: 0)
        cr.selectFontFace(sansSerif, slant: normalSlant, weight: normalWeight)
        cr.fontSize = 40
        cr.moveTo(10, 50)
        cr.showText("Hello, Cairo")

        return false
    }
    window.showAll()
}

guard let status = status else {
    fatalError("Could not create Application")
}
guard status == 0 else {
    fatalError("Application exited with status \(status)")
}
