COMMENT=	UPnP IGD client lightweight library

DISTNAME=	miniupnpc-2.2.6

SHARED_LIBS += miniupnpc 3.1

WANTLIB += c

MAKE_FLAGS=	APIVERSION=${LIBminiupnpc_VERSION}
FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

USE_GMAKE=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	updateminiupnpcstrings.sh

.include <bsd.port.mk>
