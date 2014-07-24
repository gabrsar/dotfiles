" Vim syntax file, C language extensions for pthreads, MPI
" Maintainer:	Stephen Becker, srbecker@caltech.edu
" Last Change:	2010 Jan 30
" Please email me if you find typos
"
" This file should be in $VIMRUNTIME/after/syntax/c.vim
" So that your regular c.vim file is loaded, and then this
" file is loaded as a supplement
"
" You can find other syntax files, like cuda.vim, on the web.

" ============= pthreads ================================
" these are functions for pthreads
syn keyword     cPthreadFcn          pthread_exit pthread_cancel pthread_create  
syn keyword     cPthreadFcn          pthread_join pthread_detach 
syn keyword     cPthreadFcn          pthread_mutex_init pthread_mutex_destroy
syn keyword     cPthreadFcn          pthread_mutex_lock pthread_mutex_trylock
syn keyword     cPthreadFcn          pthread_mutex_unlock
syn keyword     cPthreadFcn          pthread_cond_init pthread_cond_destroy  
syn keyword     cPthreadFcn          pthread_cond_wait pthread_cond_signal
syn keyword     cPthreadFcn          pthread_cond_broadcast
syn keyword     cPthreadFcn          pthread_self pthread_equal pthread_once

" These are actual cTypes:
syn keyword     cType           pthread_t pthread_attr_t
syn keyword     cType           pthread_mutex_t pthread_condattr_t  

" ============= MPI =====================================
syn keyword     cMPIFcn          MPI_Init MPI_Finalize   
syn keyword     cMPIFcn          MPI_Comm_size MPI_Comm_rank 
syn keyword     cMPIFcn          MPI_Allreduce
syn keyword     cMPIFcn          MPI_Send MPI_Recv
syn keyword     cMPIFcn          MPI_Rsend MPI_Brecv
syn keyword     cMPIFcn          MPI_Ssend MPI_Srecv
syn keyword     cMPIFcn          MPI_Isend MPI_Irecv
syn keyword     cMPIFcn          MPI_Irsend MPI_Ibsend MPI_Issend
syn keyword     cMPIFcn          MPI_Test MPI_Wait
syn keyword cConstant MPI_ANY_SOURCE MPI_ANY_TAG

syn keyword     cMPIFcn          MPI_Group_free MPI_Comm_free MPI_Comm_disconnect
syn keyword     cMPIFcn          MPI_Group_incl MPI_Group_excl
syn keyword     cMPIFcn          MPI_Group_union MPI_Group_intersection
syn keyword     cMPIFcn          MPI_Group_difference

syn keyword     cMPIFcn          MPI_Wtime MPI_Wtick 

syn keyword     cMPIFcn          MPI_Scan MPI_Reduce MPI_Barrier MPI_Scatter

syn keyword     cType           MPI_Comm
syn keyword cConstant MPI_SUCCESS MPI_COMM_WORLD MPI_COMM_SELF MPI_GROUP_EMPTY

syn keyword     cType           MPI_Datatype
syn keyword cConstant MPI_INT MPI_LONG MPI_DOUBLE
" added Feb 11, 2010
syn keyword cConstant MPI_BYTE MPI_PACKED MPI_CHAR MPI_SHORT
syn keyword cConstant MPI_FLOAT MPI_LONG_DOUBLE MPI_UNSIGNED_CHAR MPI_UNSIGNED


syn keyword     cType           MPI_Op 
syn keyword cConstant MPI_MAX MPI_MIN MPI_MAXLOC MPI_MINLOC
syn keyword cConstant MPI_SUM MPI_PROD MPI_LAND MPI_LOR MPI_LXOR
syn keyword cConstant MPI_BAND MPI_BOR MPI_BXOR MPI_REPLACE

" added Feb 11, 2010
syn keyword cType   MPI_Group MPI_Info MPI_Request MPI_Status MPI_Win MPI_Errhandler
syn keyword cType   MPI_Aint MPI_Offset

" ============= gsl_rng.h =====================================
" Below is just an example that was partly generated by regexp searching.  
" TODO: write a script that takes
" an arbitrary .h file and generates an appropriate syntax file.
syn keyword cType   gsl_rng_type gsl_rng GSL_VAR
syn keyword cStatement gsl_rng_alloc gsl_rng_uniform gsl_rng_set
syn keyword cStatement gsl_rng_clone gsl_rng_memcpy gsl_rng_free
syn keyword cStatement gsl_rng_max gsl_rng_min gsl_rng_name gsl_rng_size
syn keyword cStatement gsl_rng_get gsl_rng_state gsl_rng_uniform_pos
syn keyword cStatement gsl_rng_uniform_int
syn keyword cConstant gsl_rng_default gsl_rng_default_seed

syn keyword cConstant gsl_rng_borosh13 gsl_rng_coveyou gsl_rng_cmrg gsl_rng_fishman18 
syn keyword cConstant gsl_rng_fishman20 gsl_rng_fishman2x gsl_rng_gfsr4 gsl_rng_knuthran 
syn keyword cConstant gsl_rng_knuthran2 gsl_rng_knuthran2002 gsl_rng_lecuyer21 
syn keyword cConstant gsl_rng_minstd gsl_rng_mrg gsl_rng_mt19937 gsl_rng_mt19937_1999
syn keyword cConstant gsl_rng_mt19937_1998 gsl_rng_r250 gsl_rng_ran0 gsl_rng_ran1
syn keyword cConstant gsl_rng_ran2 gsl_rng_ran3 gsl_rng_rand gsl_rng_rand48 
syn keyword cConstant gsl_rng_random128_bsd gsl_rng_random128_glibc2 gsl_rng_random128_libc5
syn keyword cConstant gsl_rng_random256_bsd gsl_rng_random256_glibc2 gsl_rng_random256_libc5
syn keyword cConstant gsl_rng_random32_bsd gsl_rng_random32_glibc2 gsl_rng_random32_libc5 
syn keyword cConstant gsl_rng_random64_bsd gsl_rng_random64_glibc2 gsl_rng_random64_libc5
syn keyword cConstant gsl_rng_random8_bsd gsl_rng_random8_glibc2 gsl_rng_random8_libc5 
syn keyword cConstant gsl_rng_random_bsd gsl_rng_random_glibc2 gsl_rng_random_libc5 
syn keyword cConstant gsl_rng_randu gsl_rng_ranf gsl_rng_ranlux gsl_rng_ranlux389 
syn keyword cConstant gsl_rng_ranlxd1 gsl_rng_ranlxd2 gsl_rng_ranlxs0 gsl_rng_ranlxs1 
syn keyword cConstant gsl_rng_ranlxs2 gsl_rng_ranmar gsl_rng_slatec gsl_rng_taus 
syn keyword cConstant gsl_rng_taus2 gsl_rng_taus113 gsl_rng_transputer gsl_rng_tt800 
syn keyword cConstant gsl_rng_uni gsl_rng_uni32 gsl_rng_vax gsl_rng_waterman14 gsl_rng_zuf 


" to choose the color, you can define it yourself, as below, but this is
" not recommended because if you change your color scheme, these colors
" won't be updated.
"hi cMPIFcn term=NONE ctermfg=7 gui=NONE guifg=#D0B099
"hi cPthreadFcn term=NONE ctermfg=5 gui=NONE guifg=#D0B099
"hi cPthreadFcn term=NONE cterm=underline ctermfg=7 gui=NONE guifg=#D0B099

" A better solution is to link these new types ("cMPIFcn") to existing
" types that already have colors defined, and that will be changed
" automatically if the color scheme changes.

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
HiLink cMPIFcn         cPthreadFcn
HiLink cPthreadFcn     cStatement
  delcommand HiLink
endif

" possible commands you can link it to (a partial list):
" cStatement, cLabel, cConditional, cRepeat, cTodo,
" cOperator, cType, cConstant, cStructure, cStorageClass
" (these are in turn linked to types like Statement, Label, ...)
"

" A complete list (the * ones are the "main" commands, and the ones without *
" listed below those usually link to the main command):
""
"*Comment	any comment
"
"*Constant	any constant
" String		a string constant: "this is a string"
" Character	a character constant: 'c', '\n'
" Number		a number constant: 234, 0xff
" Boolean	a boolean constant: TRUE, false
" Float		a floating point constant: 2.3e10
"
"*Identifier	any variable name
" Function	function name (also: methods for classes)
"
"*Statement	any statement
" Conditional	if, then, else, endif, switch, etc.
" Repeat		for, do, while, etc.
" Label		case, default, etc.
" Operator	"sizeof", "+", "*", etc.
" Keyword	any other keyword
" Exception	try, catch, throw
"
" *PreProc	generic Preprocessor
" Include	preprocessor #include
" Define		preprocessor #define
" Macro		same as Define
" PreCondit	preprocessor #if, #else, #endif, etc.
"
"*Type		int, long, char, etc.
" StorageClass	static, register, volatile, etc.
" Structure	struct, union, enum, etc.
" Typedef	A typedef
"
"*Special	any special symbol
" SpecialChar	special character in a constant
" Tag		you can use CTRL-] on this
" Delimiter	character that needs attention
" SpecialComment	special things inside a comment
" Debug		debugging statements
"
"*Underlined	text that stands out, HTML links
"
"*Ignore		left blank, hidden
"
"*Error		any erroneous construct
"
"*Todo		anything that needs extra attention; mostly the
"