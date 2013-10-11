# $OpenBSD: Makefile,v 1.12 2013/10/11 23:51:47 naddy Exp $

COMMENT =		simple background setter

VERSION =		0.5
DISTNAME =		bgs-${VERSION}
REVISION=		2
CATEGORIES =		x11 graphics

MAINTAINER =		Michael Erdely <merdely@openbsd.org>
HOMEPAGE =		http://s01.de/~tox/index.cgi/proj_bgs
MASTER_SITES =		http://s01.de/~tox/files/bgs/

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
