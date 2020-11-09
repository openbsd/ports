# $OpenBSD: Makefile,v 1.1.1.1 2020/11/09 15:01:45 jasper Exp $

COMMENT =	RISC-V Proxy Kernel

GH_COMMIT =	a4d4298ca10527a51fad86c53a93c48e6f510092
GH_ACCOUNT =	riscv
GH_PROJECT =	riscv-pk

DISTNAME =	riscv-pk-1.0.0

CATEGORIES =	sysutils

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE =Yes

BUILD_DEPENDS =	devel/riscv-elf/newlib

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--host=riscv64-unknown-elf
CONFIGURE_ENV =	CC=riscv64-unknown-elf-gcc
PREFIX=		${LOCALBASE}/riscv64-unknown-elf

USE_GMAKE =	Yes
SEPARATE_BUILD =Yes

#.if ${FLAVOR:Mriscv32}
#CONFIGURE_ARGS +=--with-arch=rv32i
#.endif

# No actual tests?
NO_TEST =	Yes

.include <bsd.port.mk>
