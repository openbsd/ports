# $OpenBSD: Makefile,v 1.14 2015/05/23 11:58:19 jung Exp $

COMMENT =		simple background setter

VERSION =		0.7.1
DISTNAME =		${GH_PROJECT}-${VERSION}
CATEGORIES =		x11 graphics

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xinerama c Imlib2 m

GH_ACCOUNT =		Gottox
GH_PROJECT =		bgs
GH_TAGNAME =		v${VERSION}

LIB_DEPENDS =		graphics/imlib2

NO_TEST =		Yes
SUBST_VARS =		VERSION

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bgs.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
