# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:39 sthen Exp $

COMMENT =	program for extreme audio stretching
DISTNAME =	paulstretch-2.2-2
REVISION =	7
PKGNAME =	paulstretch-2.2.2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11

HOMEPAGE =	http://hypermammut.sourceforge.net/paulstretch/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama audiofile c fltk fontconfig
WANTLIB += m mad mxml ogg portaudio pthread ${COMPILER_LIBCXX} vorbis vorbisenc
WANTLIB += vorbisfile z Xcursor Xfixes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=hypermammut/}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	audio/libmad \
		audio/libvorbis \
		audio/libogg \
		audio/portaudio-svn \
		devel/libaudiofile \
		textproc/mxml \
		x11/fltk

NO_TEST =	Yes

do-build:
	cd ${WRKSRC}; \
	env CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" sh compile_linux_kissfft.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/paulstretch ${PREFIX}/bin

.include <bsd.port.mk>
