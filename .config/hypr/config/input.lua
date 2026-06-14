langlist = "us,ru"
sensitivity = 0
hl.config({
    input = {
        kb_layout  = langlist,
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = sensitivity,

        touchpad = {
            natural_scroll = false,
        },
    },
})
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})