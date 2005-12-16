# $OpenBSD: Makefile,v 1.2 2005/12/16 08:27:42 steven Exp $

COMMENT=		"realtime bandwidth monitoring of interfaces"

DISTNAME=		bwm-ng-0.5
PKGNAME=		${DISTNAME}p0
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
	${INSTALL_DATA} ${WRKBUILD}/bwm-ng.css ${PREFIX}/share/examples/bwm-ng

.include <bsd.port.mk>
