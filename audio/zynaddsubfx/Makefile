COMMENT=	synth capable of making a countless number of instruments

DISTNAME=	zynaddsubfx-3.0.6
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	https://zynaddsubfx.sourceforge.net

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL X11 c fftw3f lo m mxml sndio
WANTLIB +=	z

SITES=		${SITE_SOURCEFORGE:=zynaddsubfx/}
EXTRACT_SUFX=	.tar.bz2

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	shells/bash-completion

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/mruby-zest

LIB_DEPENDS=	math/fftw3,float \
		textproc/mxml \
		audio/liblo

CONFIGURE_ARGS=	-DGuiModule=zest \
		-DAlsaEnable=OFF \
		-DDssiEnable=OFF \
		-DJackEnable=OFF \
		-DLashEnable=OFF \
		-DOssEnable=OFF \
		-DPaEnable=OFF \
		-DSndioEnable=ON

post-patch:
	sed -i s,/usr/X11R6,${X11BASE}, ${WRKSRC}/src/CMakeLists.txt
	sed -i s,/usr/local,${TRUEPREFIX}, ${WRKSRC}/src/main.cpp \
	    ${WRKSRC}/src/Plugin/ZynAddSubFX/ZynAddSubFX-UI-Zest.cpp

.include <bsd.port.mk>
