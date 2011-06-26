# $OpenBSD: Makefile,v 1.22 2011/06/26 10:36:16 sthen Exp $

COMMENT =	cross-platform 3D audio API

V =		20110624
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
REVISION =	1
CATEGORIES =	audio
SHARED_LIBS =	openal	2.0

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

# LGPLv2+
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

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
