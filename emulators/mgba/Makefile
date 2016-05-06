# $OpenBSD: Makefile,v 1.9 2016/05/06 21:39:03 sthen Exp $

COMMENT-main =		Game Boy Advance emulator
COMMENT-qt =		Game Boy Advance emulator with GUI

V =			0.3.2
DISTNAME =		mgba-$V
PKGNAME-main =		mgba-$V
PKGNAME-qt =		mgba-qt-$V
REVISION-main =		1
REVISION-qt =		1

MULTI_PACKAGES =	-main -qt

.include <bsd.port.arch.mk>

SHARED_LIBS +=  mgba                      0.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://endrift.com/mgba/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB =		GL GLU MagickCore-6.Q16 MagickWand-6.Q16 SDL2 \
			avcodec avformat avresample avutil c edit m png \
			pthread swscale termcap z zip
WANTLIB-main =		${cWANTLIB}
WANTLIB-qt =		${cWANTLIB} Qt5Core Qt5Gui Qt5Multimedia \
			Qt5Network Qt5OpenGL Qt5Widgets estdc++ mgba

GH_ACCOUNT =		mgba-emu
GH_PROJECT =		mgba
GH_TAGNAME =		$V

MODULES =		devel/cmake \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS-main =	archivers/libzip \
			graphics/ImageMagick \
			graphics/ffmpeg \
			devel/sdl2
LIB_DEPENDS-qt =	${LIB_DEPENDS-main} \
			${MODQT_LIB_DEPENDS} \
			emulators/mgba,-main
RUN_DEPENDS-qt =	devel/desktop-file-utils \
			x11/gtk+3,-guic

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt5
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
