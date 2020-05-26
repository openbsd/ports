# $OpenBSD: Makefile,v 1.2 2020/05/26 18:11:16 cwen Exp $

COMMENT=	arch-independent interface for dynamic calls of C functions

V=		1.1
DISTNAME=	dyncall-${V}
CATEGORIES=	devel

HOMEPAGE=	https://www.dyncall.org/

# ISC-like
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.dyncall.org/r${V}/

SEPARATE_BUILD=	Yes

MODULES=	devel/cmake

NO_TEST=	Yes

# Assembly incompatible with clang's integrated assembler
.if ${MACHINE_ARCH:Mpowerpc}
CFLAGS +=	-fno-integrated-as
.endif

.include <bsd.port.mk>
