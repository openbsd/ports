COMMENT=	realtime bandwidth monitoring of interfaces

DISTNAME=	bwm-ng-0.6.3
CATEGORIES=	net
SITES=		https://www.gropp.org/bwm-ng/
HOMEPAGE=	https://www.gropp.org/?id=projects&sub=bwm-ng

# GPLv2+
PERMIT_PACKAGE=   Yes

# uses pledge()
WANTLIB=	c curses

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS+=	--without-libstatgrab \
			--without-netstatbsd

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.conf-example ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
