# $OpenBSD: Makefile,v 1.20 2011/06/25 18:42:02 jasper Exp $

COMMENT =	cross-platform 3D audio API

V =		20110624
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
CATEGORIES =	audio
SHARED_LIBS =	openal	2.0

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread sndio portaudio

MASTER_SITES =		${HOMEPAGE:S,.html,-releases/,} \
			http://openbsd.fi/dist/

LIB_DEPENDS =		audio/portaudio-svn
MODULES =		devel/cmake

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
