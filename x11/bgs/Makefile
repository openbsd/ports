# $OpenBSD: Makefile,v 1.10 2010/11/22 08:36:55 espie Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xinerama c Imlib2

LIB_DEPENDS =		graphics/imlib2

USE_GROFF =		Yes
NO_REGRESS =		Yes
SUBST_VARS =		VERSION

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bgs.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
