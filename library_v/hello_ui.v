import gg

struct App {
mut:
    ctx    &gg.Context = unsafe { nil }
    clicked bool
}

fn main() {
    mut app := &App{}
    app.ctx = gg.new_context(
        bg_color:     gg.rgb(30, 30, 45)
        width:        500
        height:       350
        window_title: 'Привет из GG'
        user_data:    app
        frame_fn:     frame
        event_fn:     event
    )
    app.ctx.run()
}

fn frame(mut app App) {
    app.ctx.begin()

    // Title
    app.ctx.draw_text(250, 100, 'Hello World!',
        size: 36
        color: gg.rgb(100, 200, 255)
        align: .center
        bold: true
    )

    // SubTitle
    app.ctx.draw_text(250, 155, 'This application on a clean gg',
        size: 18
        color: gg.rgb(180, 180, 200)
        align: .center
    )

    // Button
    btn_x, btn_y := 175, 220
    btn_w, btn_h := 150, 50

    // Color changes on pushing
    btn_color := if app.clicked {
        gg.rgb(50, 100, 220)
    } else {
        gg.rgb(70, 130, 250)
    }

    app.ctx.draw_rounded_rect_filled(btn_x, btn_y, btn_w, btn_h, 12, btn_color)

    // Text in the middle of the button
    app.ctx.draw_text(btn_x + btn_w / 2, btn_y + btn_h / 2, 'Button',
        size: 20
        color: gg.white
        align: .center
        vertical_align: .middle
        bold: true
    )

    // The Messadge on click
    if app.clicked {
        app.ctx.draw_text(250, 300, 'Button clicked!',
            size: 20
            color: gg.rgb(100, 255, 150)
            align: .center
        )
    }

    app.ctx.end()
}

fn event(e &gg.Event, mut app App) {
    if e.typ == .mouse_down {
        // Coordinates of the button
        btn_x, btn_y := 175, 220
        btn_w, btn_h := 150, 50

        mx := int(e.mouse_x)
        my := int(e.mouse_y)

        // Checking click
        if mx >= btn_x && mx <= btn_x + btn_w && my >= btn_y && my <= btn_y + btn_h {
            app.clicked = !app.clicked
        }
    }
}