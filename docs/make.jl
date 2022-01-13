using FunProject
using Documenter

DocMeta.setdocmeta!(FunProject, :DocTestSetup, :(using FunProject); recursive=true)

makedocs(;
    modules=[FunProject],
    authors="Nivedita Rethnakar et al.",
    repo="https://github.com/nivupai/FunProject.jl/blob/{commit}{path}#{line}",
    sitename="FunProject.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://nivupai.github.io/FunProject.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nivupai/FunProject.jl",
    devbranch="main",
)
