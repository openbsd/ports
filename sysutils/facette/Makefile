# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:42 sthen Exp $

COMMENT =	time series data visualization and graphing software

GH_ACCOUNT =	facette
GH_PROJECT =	facette
GH_TAGNAME =	0.4.1

CATEGORIES =	sysutils

HOMEPAGE =	https://facette.io

# selfhosted node_modules deps generated via gmake node_modules
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_TAGNAME}${EXTRACT_SUFX}} \
		${GH_PROJECT}-${GH_TAGNAME}-node_modules${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://deftly.net/dist/

# BSD
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	lang/go \
		lang/node
LIB_DEPENDS =	net/rrdtool
WANTLIB +=	c pthread rrd

PORTHOME =		${WRKDIR}
MAKE_ENV =		CGO_LDFLAGS="-Wl,-rpath -Wl,${X11BASE}/lib"
USE_GMAKE =		Yes
SUBST_VARS +=	VARBASE

post-patch:
	ln -s ${WRKDIR}/node_modules ${WRKSRC}/node_modules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/facette/
	${SUBST_CMD} -c ${WRKSRC}/docs/examples/facette.yaml \
		${PREFIX}/share/examples/facette/facette.yaml

.include <bsd.port.mk>
