COMMENT=	traceroute implementation using TCP packets

GH_ACCOUNT=	mct
GH_PROJECT=	tcptraceroute
GH_TAGNAME=	tcptraceroute-1.5beta7
REVISION=	4
PKGNAME=	${GH_TAGNAME}

CATEGORIES=	net

HOMEPAGE=	https://github.com/mct/tcptraceroute

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c pcap lib/libnet-1.1/net=11

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-libnet=${PREFIX} \
		--enable-noselect-default

LIB_DEPENDS=	net/libnet/1.1

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}"

NO_TEST=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
