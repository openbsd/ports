# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:07 sthen Exp $

COMMENT=	typing tutor for dvorak keyboards

DISTNAME=	dvorak7min-1.6.1
REVISION=	2
CATEGORIES=	education

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MASTER_SITES=	https://distfiles.nl/

MAKE_FLAGS=	CC="${CC}" PROF="${CFLAGS}"

NO_TEST=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} clean

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvorak7min ${PREFIX}/bin

.include <bsd.port.mk>
