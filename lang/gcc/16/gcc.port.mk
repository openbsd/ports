MODGCC_ARCHS ?= ${PORTSGCC_ARCHS}
MODGCC_LANGS ?=


# Always include support for this
MODGCC_LANGS +=	c

_MODGCC_OKAY = c c++ d fortran
.for _l in ${MODGCC_LANGS:L}
.  if !${_MODGCC_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODGCC_ARCH_USES = No

.for _i in ${MODGCC_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODGCC_ARCH_USES = Yes
.  endif
.endfor

_MODGCC_LINKS =
MODGCCSTDCPP = estdc++
MODGCC_CPPLIBDEP = lang/gcc/16,-libs>=16,<17
MODGCC_CPPDEP =    lang/gcc/16,-c++>=16,<17
MODGCC_CPPWANTLIB = estdc++>=22 pthread
MODGCC_ATOMICWANTLIB = atomic

MODGCC_DLANGDEP = lang/gcc/16,-dlang>=16,<17

MODGCC_FORTRANDEP = lang/gcc/16,-f95>=16,<17
MODGCC_FORTRANLIBDEP = lang/gcc/16,-libs>=16,<17
MODGCC_FORTRANWANTLIB = gfortran>=11
# XXX sync with Makefile
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
MODGCC_FORTRANWANTLIB += quadmath
.endif

.if ${_MODGCC_ARCH_USES:L} == "yes"

.  if ${MODGCC_LANGS:L:Mc}
BUILD_DEPENDS += lang/gcc/16>=16,<17
# XXX ports-clang already defines this
.    if !${COMPILER_LINKS:Mgcc}
COMPILER_LINKS += gcc ${LOCALBASE}/bin/egcc cc ${LOCALBASE}/bin/egcc
.    endif
.  endif

.  if ${MODGCC_LANGS:L:Mc++}
BUILD_DEPENDS += ${MODGCC_CPPDEP}
LIB_DEPENDS += ${MODGCC_CPPLIBDEP}
LIBECXX = ${MODGCC_CPPWANTLIB}
# XXX ports-clang already defines this
.    if !${COMPILER_LINKS:Mg++}
COMPILER_LINKS += c++ ${LOCALBASE}/bin/eg++ g++ ${LOCALBASE}/bin/eg++
.    endif
.  endif

.  if ${MODGCC_LANGS:L:Md}
BUILD_DEPENDS += ${MODGCC_DLANGDEP}
COMPILER_LINKS += gdc ${LOCALBASE}/bin/egdc
.  endif

.  if ${MODGCC_LANGS:L:Mfortran}
BUILD_DEPENDS += ${MODGCC_FORTRANDEP}
WANTLIB += ${MODGCC_FORTRANWANTLIB}
LIB_DEPENDS += ${MODGCC_FORTRANLIBDEP}
COMPILER_LINKS += gfortran ${LOCALBASE}/bin/egfortran
.  endif

#.  if ${MODGCC_LANGS:L:Mgo}
#BUILD_DEPENDS += lang/gcc/6,-go>=6,<7
#WANTLIB += go
#LIB_DEPENDS += lang/gcc/6,-go>=6,<7
#COMPILER_LINKS += gccgo ${LOCALBASE}/bin/egccgo
#.  endif
.endif

.if !empty(_MODGCC_LINKS)
.  for _src in ${_MODGCC_LINKS}
MODGCC_post-patch += ln -sf ${LOCALBASE}/bin/e${_src} ${WRKDIR}/bin/${_src};
.  endfor
.endif
