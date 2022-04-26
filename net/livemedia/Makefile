COMMENT=	LIVE555 streaming media library

VERSION=	2022.04.25
DISTNAME=	live.${VERSION}
PKGNAME=	liveMedia-${VERSION:S/.//g}
CATEGORIES=	net devel
MASTER_SITES=	https://download.videolan.org/contrib/live555/

HOMEPAGE=	http://www.live555.com/liveMedia/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ssl crypto pthread ${COMPILER_LIBCXX}

.for lib in liveMedia BasicUsageEnvironment UsageEnvironment groupsock
SHARED_LIBS += ${lib} 0.1
.endfor

COMPILER=	base-clang ports-gcc base-gcc

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=genMakefiles
CONFIGURE_ARGS=	fixed-openbsd

WRKDIST=	${WRKDIR}/live

NO_TEST=	Yes

CFLAGS+=	-fPIC -DXLOCALE_NOT_USED
MAKE_FLAGS+=	LIBliveMedia_VERSION=${LIBliveMedia_VERSION}

post-extract:
	cp -f ${FILESDIR}/config.fixed-openbsd ${WRKSRC}/

post-install:
	rm ${PREFIX}/lib/*.so

.include <bsd.port.mk>
