# $OpenBSD: Makefile,v 1.8 2018/04/25 16:09:56 landry Exp $

COMMENT =	time series data visualization and graphing software

GH_ACCOUNT =	facette
GH_PROJECT =	facette
GH_TAGNAME =	0.4.0

CATEGORIES =	sysutils

HOMEPAGE =	https://facette.io

# selfhosted node_modules deps generated via gmake node_modules
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_TAGNAME}${EXTRACT_SUFX}} \
		${GH_PROJECT}-${GH_TAGNAME}-node_modules${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://rhaalovely.net/stuff/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
