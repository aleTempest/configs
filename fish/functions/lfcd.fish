function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    cd "$(command lf -print-last-dir $argv)"
end
