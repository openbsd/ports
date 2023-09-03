MODCLANG_VERSION ?=	13

MODCLANG_RUN_DEPENDS=     devel/llvm/${MODCLANG_VERSION}
MODCLANG_LIB_DEPENDS=     devel/llvm/${MODCLANG_VERSION}
_MODCLANG_BUILD_DEPENDS=  devel/llvm/${MODCLANG_VERSION}

MODCLANG_ARCHS ?= ${LLVM_ARCHS}
MODCLANG_LANGS ?=
MODCLANG_COMPILER_LINKS ?= Yes
MODCLANG_BUILDDEP ?= Yes
MODCLANG_RUNDEP ?= No

.if ${MODCLANG_RUNDEP:L} == "yes"
RUN_DEPENDS+=           ${MODCLANG_RUN_DEPENDS}
.endif

.if !${MODCLANG_LANGS:L:Mc}
# Always include support for this
MODCLANG_LANGS += c
.endif

_MODCLANG_OKAY = c c++
.for _l in ${MODCLANG_LANGS:L}
.  if !${_MODCLANG_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODCLANG_ARCH_USES = No

.for _i in ${MODCLANG_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = Yes
.  endif
.endfor

_MODCLANG_ARCH_CLANG = No

.for _i in ${CLANG_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_CLANG = Yes
.  endif
.endfor

.if ${_MODCLANG_ARCH_USES:L} == "yes"

.  if ${NO_BUILD:L} == "no" && ${MODCLANG_BUILDDEP:L} == "yes"
BUILD_DEPENDS += ${_MODCLANG_BUILD_DEPENDS}
.  endif

.  if ${MODCLANG_COMPILER_LINKS:L} == "yes"
COMPILER_LINKS = 	gcc ${LOCALBASE}/bin/clang-${MODCLANG_VERSION} \
			cc ${LOCALBASE}/bin/clang-${MODCLANG_VERSION} \
			clang ${LOCALBASE}/bin/clang-${MODCLANG_VERSION}
.  endif

.  if ${MODCLANG_LANGS:L:Mc++} && ${MODCLANG_COMPILER_LINKS:L} == "yes"
COMPILER_LINKS +=	g++ ${LOCALBASE}/bin/clang++-${MODCLANG_VERSION} \
			c++ ${LOCALBASE}/bin/clang++-${MODCLANG_VERSION} \
			clang++ ${LOCALBASE}/bin/clang++-${MODCLANG_VERSION}

.    if ${_MODCLANG_ARCH_CLANG:L} == "no"
# uses libestdc++
MODULES += gcc4
MODCLANG_CPPLIBDEP = ${MODGCC4_CPPLIBDEP}
LIB_DEPENDS += ${MODCLANG_CPPLIBDEP}
MODCLANG_CPPWANTLIB = ${MODGCC4_CPPWANTLIB}
WANTLIB += ${MODCLANG_CPPWANTLIB}
.    else
# uses libc++
MODCLANG_CPPLIBDEP =
MODCLANG_CPPWANTLIB = c++ c++abi pthread
WANTLIB += ${MODCLANG_CPPWANTLIB}
.    endif
.  endif
.endif

SUBST_VARS+=	MODCLANG_VERSION
