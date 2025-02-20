COMMENT=	manuals for CMake
PKGNAME=	cmake-man-${VER}

BUILD_DEPENDS=	textproc/py-sphinx
MODULES=	devel/cmake
CONFIGURE_ARGS=	-DSPHINX_MAN=On \
		-DCMAKE_VERBOSE_MAKEFILE=true

WRKSRC=		${WRKDIST}/Utilities/Sphinx

.include <bsd.port.mk>
