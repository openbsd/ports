MODGCC4_ARCHS ?= ${GCC49_ARCHS}
MODGCC4_LANGS ?=


# Always include support for this
MODGCC4_LANGS +=	c

_MODGCC4_OKAY = c c++ fortran
.for _l in ${MODGCC4_LANGS:L}
.  if !${_MODGCC4_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODGCC4_ARCH_USES = No

.for _i in ${MODGCC4_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = Yes
.  endif
.endfor

COMPILER_VERSION ?= gcc2

_MODGCC4_LINKS =
MODGCC4STDCPP = estdc++
MODGCC4_CPPLIBDEP = lang/gcc/11,-libs>=11,<12
MODGCC4_CPPDEP =    lang/gcc/11,-c++>=11,<12
MODGCC4_CPPWANTLIB = estdc++>=20
MODGCC4_ATOMICWANTLIB = atomic

MODGCC4_FORTRANDEP = lang/gcc/11,-f95>=11,<12
MODGCC4_FORTRANLIBDEP = lang/gcc/11,-libs>=11,<12
MODGCC4_FORTRANWANTLIB = gfortran>=9
# XXX sync with Makefile
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
MODGCC4_FORTRANWANTLIB += quadmath
.endif

.if ${_MODGCC4_ARCH_USES:L} == "yes"

.  if ${MODGCC4_LANGS:L:Mc}
BUILD_DEPENDS += lang/gcc/11>=11,<12
# XXX ports-clang already defines this
.    if !${COMPILER_LINKS:Mgcc}
COMPILER_LINKS += gcc ${LOCALBASE}/bin/egcc cc ${LOCALBASE}/bin/egcc
.    endif
.  endif

.  if ${MODGCC4_LANGS:L:Mc++}
BUILD_DEPENDS += ${MODGCC4_CPPDEP}
LIB_DEPENDS += ${MODGCC4_CPPLIBDEP}
WANTLIB += ${MODGCC4_CPPWANTLIB}
# XXX ports-clang already defines this
.    if !${COMPILER_LINKS:Mg++}
COMPILER_LINKS += c++ ${LOCALBASE}/bin/eg++ g++ ${LOCALBASE}/bin/eg++
.    endif
.  endif

.  if ${MODGCC4_LANGS:L:Mfortran}
BUILD_DEPENDS += ${MODGCC4_FORTRANDEP}
WANTLIB += ${MODGCC4_FORTRANWANTLIB}
LIB_DEPENDS += ${MODGCC4_FORTRANLIBDEP}
COMPILER_LINKS += gfortran ${LOCALBASE}/bin/egfortran
.  endif

#.  if ${MODGCC4_LANGS:L:Mgo}
#BUILD_DEPENDS += lang/gcc/6,-go>=6,<7
#WANTLIB += go
#LIB_DEPENDS += lang/gcc/6,-go>=6,<7
#COMPILER_LINKS += gccgo ${LOCALBASE}/bin/egccgo
#.  endif
.endif

.if !empty(_MODGCC4_LINKS)
.  for _src in ${_MODGCC4_LINKS}
MODGCC4_post-patch += ln -sf ${LOCALBASE}/bin/e${_src} ${WRKDIR}/bin/${_src};
.  endfor
.endif
