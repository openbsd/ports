COMMENT=	UPnP IGD client lightweight library

# newer versions change API_VERSION and some dependent ports need patching
# (some changes result in build failures, others result in subtler breakage)
DISTNAME=	miniupnpc-2.2.7

SHARED_LIBS += miniupnpc 3.1

WANTLIB += c

MAKE_FLAGS=	APIVERSION=${LIBminiupnpc_VERSION}
FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

USE_GMAKE=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	updateminiupnpcstrings.sh

.include <bsd.port.mk>
