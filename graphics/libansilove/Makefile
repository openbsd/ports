# $OpenBSD: Makefile,v 1.1.1.1 2019/01/18 11:36:25 fcambus Exp $

COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.1.0
DISTNAME =	libansilove-${V}

SHARED_LIBS +=	ansilove	0.0 # 1.1

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/ansilove/libansilove/releases/download/${V}/

WANTLIB =	m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/libansilove.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
