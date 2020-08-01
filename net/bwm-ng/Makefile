# $OpenBSD: Makefile,v 1.17 2020/08/01 11:30:36 sthen Exp $

COMMENT=	realtime bandwidth monitoring of interfaces

DISTNAME=	bwm-ng-0.6.1
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bwmng/}
HOMEPAGE=	http://www.gropp.org/

# GPLv2+
PERMIT_PACKAGE=   Yes

# uses pledge()
WANTLIB=	c curses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-libstatgrab \
			--without-netstatbsd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.conf-example ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
