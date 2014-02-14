write_file(Path, Data, Modes) ->
    Modes1 = [binary, write | (Modes -- [binary, write])],
    do([error_m ||
        Bin <- make_binary(Data),
        Hdl <- file:open(Path, Modes1),
        Result <- return(do([error_m ||
                             file:write(Hdl, Bin),
                             file:sync(Hdl)])),
        file:close(Hdl),
        Result]).