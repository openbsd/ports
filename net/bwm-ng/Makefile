# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:45 espie Exp $

COMMENT=		realtime bandwidth monitoring of interfaces

DISTNAME=		bwm-ng-0.6
REVISION=		0
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bwmng/}
HOMEPAGE=		http://www.gropp.org/

MAINTAINER=		Genadijus Paleckis <rwx@openbsd.lt>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c curses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-libstatgrab
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.conf-example ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
