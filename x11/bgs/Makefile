# $OpenBSD: Makefile,v 1.2 2009/02/08 20:41:22 merdely Exp $

COMMENT =		simple background setter

VERSION =		0.5
DISTNAME =		bgs-${VERSION}
CATEGORIES =		x11 graphics

HOMEPAGE =		http://s01.de/~gottox/index.cgi/proj_bgs
MASTER_SITES =		http://s01.de/~gottox/files/bgs/

MAINTAINER =		James Turner <james@bsdgroup.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xinerama c

LIB_DEPENDS =		Imlib2::graphics/imlib2

USE_X11 =		Yes
NO_REGRESS =		Yes
SUBST_VARS =		VERSION

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bgs.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
