COMMENT=	TCP/IP traffic logging tool

DISTNAME=	iplog-2.2.3
REVISION=	3
CATEGORIES=	net security
SITES=		${SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	https://ojnk.sourceforge.net

PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap pthread

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iplog
	${INSTALL_DATA} ${WRKSRC}/example-iplog.conf \
		${PREFIX}/share/examples/iplog/iplog.conf

.include <bsd.port.mk>
