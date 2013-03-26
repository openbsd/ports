# $OpenBSD: Makefile,v 1.7 2013/03/26 08:30:11 ajacoutot Exp $

COMMENT=	XKCD comic viewer

DISTNAME=	XKCD_viewer-0.1
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	1
CATEGORIES=	misc

MASTER_SITES=	http://www.autistici.org/fox/files/XKCD_viewer/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST=	${WRKDIR}/XKCD_viewer
MODULES=	perl

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Gtk2>=1.247 \
		www/p5-libwww

.include <bsd.port.mk>
