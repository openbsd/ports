COMMENT =	open source reimplementation of Syndicate game

VERSION =	0.8
PKGNAME =	freesynd-${VERSION}
DISTNAME =	Freesynd-${VERSION}-Source
CATEGORIES = 	games x11

HOMEPAGE =	https://freesynd.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =  Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer c m png
WANTLIB += z

SITES =		${SITE_SOURCEFORGE:=freesynd/}
EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		devel/sdl2-image \
		devel/sdl2-mixer \
		graphics/png

CONFIGURE_ARGS =	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_INSTALL_DOCDIR=${LOCALBASE}/share/doc/freesynd

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/freesynd/
	mv ${WRKINST}${LOCALBASE}${SYSCONFDIR}/freesynd/freesynd.ini \
		${PREFIX}/share/examples/freesynd/

.include <bsd.port.mk>
