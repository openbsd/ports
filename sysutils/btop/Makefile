COMMENT=	resource monitor

GH_ACCOUNT=	aristocratos
GH_PROJECT=	btop
GH_TAGNAME=	v1.3.2

CATEGORIES=	sysutils

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c kvm m

# C++23
COMPILER =	base-clang

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST=	Yes
USE_GMAKE=	Yes
MAKE_FLAGS=	QUIET=true \
		VERBOSE=true \
		BANNER= \
		THREADS=${MAKE_JOBS} \
		OPTFLAGS="${CXXFLAGS}"
DEBUG_PACKAGES=	${BUILD_PACKAGES}
FAKE_FLAGS=	DESTDIR=

.include <bsd.port.mk>
