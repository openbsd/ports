# $OpenBSD: Makefile,v 1.20 2019/07/14 02:16:52 naddy Exp $

COMMENT=	multiprotocol traceroute tool

DISTNAME=	ctrace-0.9
REVISION=	2
CATEGORIES=	net
HOMEPAGE=	http://www.pratyeka.org/ctrace/

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

MASTER_SITES=	${HOMEPAGE}download/

RUN_DEPENDS=	devel/p5-List-MoreUtils \
		net/p5-Net-RawIP \
		www/p5-libwww

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
