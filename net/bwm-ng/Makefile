# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:52 merdely Exp $

COMMENT=		realtime bandwidth monitoring of interfaces

DISTNAME=		bwm-ng-0.6
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bwmng/}
HOMEPAGE=		http://www.gropp.org/

MAINTAINER=		Genadijus Paleckis <rwx@openbsd.lt>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c curses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-libstatgrab

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng
	${INSTALL_DATA} ${WRKSRC}/bwm-ng.conf-example ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
