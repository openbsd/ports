# $OpenBSD: Makefile,v 1.21 2011/06/26 09:58:08 sthen Exp $

COMMENT =	cross-platform 3D audio API

V =		20110624
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
REVISION =	0
CATEGORIES =	audio
SHARED_LIBS =	openal	2.0

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread sndio

MASTER_SITES =		${HOMEPAGE:S,.html,-releases/,} \
			http://openbsd.fi/dist/

MODULES =		devel/cmake

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DALSA=off -DOSS=off -DSOLARIS=off -DPORTAUDIO=off \
			-DPULSEAUDIO=off -DDLOPEN=off

NO_REGRESS =		Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
