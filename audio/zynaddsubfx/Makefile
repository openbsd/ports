# $OpenBSD: Makefile,v 1.1.1.1 2021/03/29 19:51:31 sthen Exp $

COMMENT=	synth capable of making a countless number of instruments

DISTNAME=	zynaddsubfx-3.0.5

CATEGORIES=	audio

HOMEPAGE=	https://zynaddsubfx.sourceforge.net

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} GL X11 c fftw3 lo m mxml portaudio
WANTLIB+=	z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zynaddsubfx/}
EXTRACT_SUFX=	.tar.bz2

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	shells/bash-completion

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/mruby-zest

LIB_DEPENDS=	math/fftw3 \
		textproc/mxml \
		audio/liblo \
		audio/portaudio-svn

CONFIGURE_ARGS=	-DPaEnable=ON \
		-DGuiModule=zest \
		-DAlsaEnable=OFF \
		-DJackEnable=OFF \
		-DOssEnable=OFF \
		-DDssiEnable=OFF \
		-DLashEnable=OFF

post-patch:
	sed -i s,/usr/X11R6,${X11BASE}, ${WRKSRC}/src/CMakeLists.txt
	sed -i s,/usr/local,${TRUEPREFIX}, ${WRKSRC}/src/main.cpp \
	    ${WRKSRC}/src/Plugin/ZynAddSubFX/ZynAddSubFX-UI-Zest.cpp

.include <bsd.port.mk>
