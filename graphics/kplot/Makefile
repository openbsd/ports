COMMENT = 	library for plotting graphs on cairo surfaces

VERSION =	0.1.15
DISTNAME = 	kplot-${VERSION}
SHARED_LIBS =	kplot 	0.0
CATEGORIES = 	graphics math
HOMEPAGE = 	https://kristaps.bsd.lv/kplot/

# ISC licence
PERMIT_PACKAGE = Yes

SITES = 	${HOMEPAGE}/snapshots/

EXTRACT_SUFX =	.tgz

WANTLIB += cairo
LIB_DEPENDS =	graphics/cairo
MAKE_FLAGS =	CFLAGS="${CFLAGS}"
SUBST_VARS +=	VERSION

MAKE_FILE = ${FILESDIR}/Makefile.lib

do-configure:
	touch ${WRKDIST}/compat.h # we have reallocarray

pre-build:
	echo "major=${LIBkplot_VERSION:R}" >${WRKDIST}/shlib_version
	echo "minor=${LIBkplot_VERSION:E}" >>${WRKDIST}/shlib_version

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pkgconfig
	${SUBST_DATA} ${FILESDIR}/kplot.pc.in ${PREFIX}/share/pkgconfig/kplot.pc
	${INSTALL_DATA} ${WRKDIST}/kplot.h ${PREFIX}/include


.include <bsd.port.mk>
