# uses huge amounts of memory compiling disasm.cc on i386, the available
# address space is not large enough
NOT_FOR_ARCHS =	i386

BROKEN-powerpc=	internal 'exception trap_instruction_page_fault' at runtime

COMMENT =	RISC-V ISA simulator

GH_TAGNAME =	v1.1.0
GH_ACCOUNT =	riscv-software-src
GH_PROJECT =	riscv-isa-sim
PKGNAME =	spike-${GH_TAGNAME:S/v//}

CATEGORIES =	emulators

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m boost_regex-mt boost_system-mt

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/dtc
RUN_DEPENDS =	devel/dtc
LIB_DEPENDS =	devel/boost

USE_GMAKE =	Yes
SEPARATE_BUILD =Yes

CONFIGURE_STYLE =gnu

post-install:
	rm ${PREFIX}/lib/*.a

.include <bsd.port.mk>
