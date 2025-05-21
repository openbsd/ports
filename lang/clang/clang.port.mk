MODCLANG_VERSION ?=	16

MODCLANG_RUN_DEPENDS=     devel/llvm/${MODCLANG_VERSION}
MODCLANG_LIB_DEPENDS=     devel/llvm/${MODCLANG_VERSION}
_MODCLANG_BUILD_DEPENDS=  devel/llvm/${MODCLANG_VERSION}

MODCLANG_ARCHS ?= ${LLVM_ARCHS}
MODCLANG_LANGS ?=
MODCLANG_COMPILER_LINKS ?= Yes
MODCLANG_BUILDDEP ?= Yes
MODCLANG_RUNDEP ?= No
MODCLANG_CPPLIB ?= No

.if ${MODCLANG_CPPLIB:L} == "yes" && ${MODCLANG_VERSION} < 19
ERRORS += "Fatal: ${MODCLANG_LIB_DEPENDS} does not support ports libc++"
.endif

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
LIBECXX = ${MODCLANG_CPPWANTLIB}
.    elif ${MODCLANG_CPPLIB:L} == "yes"
# uses libec++
MODCLANG_CPPLIBDEP = ${MODCLANG_LIB_DEPENDS},-libcxx
LIB_DEPENDS += ${MODCLANG_CPPLIBDEP}
MODCLANG_CPPWANTLIB =	llvm${MODCLANG_VERSION}/lib/ec++ \
			llvm${MODCLANG_VERSION}/lib/ec++abi \
			pthread
LIBECXX = ${MODCLANG_CPPWANTLIB}
MODCLANG_BASE = ${LOCALBASE}/llvm${MODCLANG_VERSION}
CONFIGURE_ENV += CXXFLAGS="-nostdinc++ -isystem ${MODCLANG_BASE}/include/c++/v1"
CONFIGURE_ENV += LDFLAGS="-nostdlib++ -Wl,-rpath,${MODCLANG_BASE}/lib \
			 -L${MODCLANG_BASE}/lib -lec++ -lec++abi"
.    else
# uses libc++
MODCLANG_CPPLIBDEP =
MODCLANG_CPPWANTLIB = c++ c++abi pthread
LIBECXX = ${MODCLANG_CPPWANTLIB}
.    endif
.  endif
.endif
