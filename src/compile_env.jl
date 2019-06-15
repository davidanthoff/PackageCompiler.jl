function compile_env()

    mktempdir() do temp_dir
        open(joinpath(temp_dir, "snoopfile.jl", "w")) do snoop_file

        end
    end

    toml, precompile = snoop_packages(pkg, packages...; blacklist=blacklist)
    compile_incremental(toml, precompile; kw...)

end
