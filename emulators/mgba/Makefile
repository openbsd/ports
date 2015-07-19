# $OpenBSD: Makefile,v 1.1.1.1 2015/07/19 21:00:00 bentley Exp $

COMMENT-main =		Game Boy Advance emulator
COMMENT-qt =		Game Boy Advance emulator with GUI

V =			0.2.1
DISTNAME =		mgba-$V
PKGNAME-main =		mgba-$V
PKGNAME-qt =		mgba-qt-$V

MULTI_PACKAGES =	-main -qt

.include <bsd.port.arch.mk>

SHARED_LIBS +=  mgba                      0.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://endrift.com/mgba/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		GL GLU MagickCore MagickWand SDL avcodec avformat \
			avresample avutil c edit m png pthread swscale \
			termcap z zip
WANTLIB-qt =		${WANTLIB-main} Qt5Core Qt5Gui Qt5Multimedia \
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
			devel/sdl
LIB_DEPENDS-qt =	${LIB_DEPENDS-main} \
			${MODQT_LIB_DEPENDS} \
			emulators/mgba,-main

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt5
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
