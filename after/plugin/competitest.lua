require('competitest').setup {
    floating_border = "rounded",
    compile_command = {
        cpp = { exec = "g++", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
    },
    run_command = {
        cpp = { exec = "./$(FNOEXT)" }
    },
    template_file = {
        cpp = "~/competitive/template.cpp",
    },
    received_problems_path = "$(HOME)/competitive/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
    evaluate_template_modifiers = true,
}
