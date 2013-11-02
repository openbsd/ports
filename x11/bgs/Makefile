# $OpenBSD: Makefile,v 1.13 2013/11/02 13:03:33 merdely Exp $

COMMENT =		simple background setter

VERSION =		0.5
DISTNAME =		bgs-${VERSION}
REVISION=		3
CATEGORIES =		x11 graphics

MAINTAINER =		Michael Erdely <merdely@openbsd.org>
HOMEPAGE =		https://github.com/Gottox/bgs
MASTER_SITES =		https://github.com/downloads/Gottox/bgs/

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xinerama c Imlib2

LIB_DEPENDS =		graphics/imlib2

NO_TEST =		Yes
SUBST_VARS =		VERSION

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bgs.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
