COMMENT=		port of http_parser to llparse

V=			9.3.0
DISTNAME=		llhttp-${V}

SHARED_LIBS +=	llhttp                    0.0 # 0.0

DIST_SUBDIR=		llhttp
DISTFILES=		v${V}${EXTRACT_SUFX}
WRKDIST=		${WRKDIR}/llhttp-release-v${V}

CATEGORIES=		www

HOMEPAGE=		https://llhttp.org/

# MIT
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/nodejs/llhttp/archive/refs/tags/release/

MODULES=		devel/cmake

.include <bsd.port.mk>
