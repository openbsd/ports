# $OpenBSD: Makefile,v 1.14 2017/08/14 22:04:36 jca Exp $

COMMENT=		realtime bandwidth monitoring of interfaces

DISTNAME=		bwm-ng-0.6.1
REVISION=		1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bwmng/}
HOMEPAGE=		http://www.gropp.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

# uses pledge()
WANTLIB=		c curses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-libstatgrab \
			--without-netstatbsd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.conf-example ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
