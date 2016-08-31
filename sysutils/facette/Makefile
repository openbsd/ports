# $OpenBSD: Makefile,v 1.3 2016/08/31 15:15:31 ajacoutot Exp $

COMMENT =	time series data visualization and graphing software

DISTNAME =	facette-0.3.1pre0

GH_ACCOUNT =	facette
GH_PROJECT =	facette
GH_COMMIT =	62f4bd9058f26e7f8ee800b925e4c76731b5b955
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://facette.io

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_COMMIT}${EXTRACT_SUFX}} \
		facette-0.3.1-node_modules${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://rhaalovely.net/stuff/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	lang/go \
		textproc/gsed \
		lang/node
LIB_DEPENDS =	net/rrdtool
WANTLIB +=	c pthread rrd

PORTHOME =		${WRKDIR}
MAKE_ENV =		CGO_LDFLAGS="-Wl,-rpath -Wl,${X11BASE}/lib"
USE_GMAKE =		Yes

post-patch:
	ln -s ${WRKDIR}/node_modules ${WRKSRC}/node_modules
	${SUBST_CMD} ${WRKSRC}/docs/examples/providers/collectd.json \
			${WRKSRC}/docs/examples/facette.json

.include <bsd.port.mk>
