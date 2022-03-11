COMMENT=	resend network traffic saved by tcpdump

V=		4.3.3
DISTNAME=	tcpreplay-$V
CATEGORIES=	net

HOMEPAGE=	https://tcpreplay.appneta.com/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c dnet>=1

MASTER_SITES=   https://github.com/appneta/tcpreplay/releases/download/v$V/

CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/libdnet

do-test:
	@echo; echo "To run tests: cd ${WRKSRC}/test,"
	@echo "edit Makefile and config to set interface, run gmake as root."
	@echo

.include <bsd.port.mk>
