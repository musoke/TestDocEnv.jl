using TestDocEnv
using Documenter

DocMeta.setdocmeta!(TestDocEnv, :DocTestSetup, :(using TestDocEnv); recursive=true)

makedocs(;
    modules=[TestDocEnv],
    authors="Nathan Musoke <nathan.musoke@gmail.com> and contributors",
    repo="https://github.com/musoke/TestDocEnv.jl/blob/{commit}{path}#{line}",
    sitename="TestDocEnv.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://musoke.github.io/TestDocEnv.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/musoke/TestDocEnv.jl",
    devbranch="main",
)
