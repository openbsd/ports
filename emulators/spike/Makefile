# $OpenBSD: Makefile,v 1.2 2020/11/04 14:40:03 sthen Exp $

# uses huge amounts of memory compiling disasm.cc on i386, the available
# address space is not large enough
NOT_FOR_ARCHS =	i386

COMMENT =	RISC-V ISA simulator

GH_COMMIT =	ec6ded4f2f21cb7aef4a0b31b82b91ef91d22c36
GH_ACCOUNT =	riscv
GH_PROJECT =	riscv-isa-sim

DISTNAME =	spike-1.0.0

CATEGORIES =	emulators

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

BUILD_DEPENDS =	devel/dtc

USE_GMAKE =	Yes
SEPARATE_BUILD =Yes

CONFIGURE_STYLE =gnu

post-install:
	rm ${PREFIX}/lib/*.a

.include <bsd.port.mk>
