# from https://github.com/bertenvdb/vcsh_bash_completion/blob/master/vcsh

_vcsh() 
{
    local cur prev opts base
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    #
    #  The basic options we'll complete.
    #
    opts="clone commit delete enter help init list list-tracked list-untracked pull push rename run status upgrade version which write-ignore"


    #
    #  Complete the arguments to some of the basic commands.
    #
    case "${prev}" in

    delete|enter|init|list-tracked|list-untracked|rename|run|status|upgrade)
	    local repos=$(for x in `ls ~/.config/vcsh/repo.d/`; do echo ${x%".git"} ; done )
	    COMPREPLY=( $(compgen -W "${repos}" -- ${cur}) )
		return 0
		;;      
    esac
   
   COMPREPLY=($(compgen -W "${opts}" -- ${cur}) )
   return 0
            
}
complete -F _vcsh vcsh
