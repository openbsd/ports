# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:55 sthen Exp $

COMMENT=	XKCD comic viewer

DISTNAME=	XKCD_viewer-0.1
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	2
CATEGORIES=	misc

MASTER_SITES=	http://www.autistici.org/fox/files/XKCD_viewer/
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv3
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/XKCD_viewer
MODULES=	perl

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Gtk2>=1.247 \
		www/p5-libwww

.include <bsd.port.mk>
