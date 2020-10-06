func! AgdaComplete(at, filter)
        echo "[AgdaComplete] \\".a:filter

        let c = nr2char(getchar())
        if empty(matchstr(c, '^[a-zA-Z0-9`^v~-–_\./?{}:;=*.+()|\\<>[\]≥≤#"'."'".'`-]$'))
                return c
        else
                let completions = []
                for [sequence, symbol] in items(g:agda#glyphs)
                        if sequence =~ "^".a:filter.c
                                call add(completions, {'word': symbol, 'abbr': printf('%s %s', symbol, sequence)})
                        endif
                endfor
                call add(completions, "\\".a:filter)

                call complete(a:at, completions)

                let r = AgdaComplete(a:at, a:filter.c)
                "if r == " "
                "       return completions[0]['word']
                "else
                "       return r
                "endif
                return r
        endif
endfunc
