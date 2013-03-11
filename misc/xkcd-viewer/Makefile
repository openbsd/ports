# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:58 espie Exp $

COMMENT=	XKCD comic viewer

DISTNAME=	XKCD_viewer-0.1
PKGNAME=	${DISTNAME:L:S/_/-/}
REVISION=	0
CATEGORIES=	misc

MASTER_SITES=	http://www.autistici.org/fox/files/XKCD_viewer/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST=		${WRKDIR}/XKCD_viewer
MODULES=	perl

CONFIGURE_STYLE=perl
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/p5-Gtk2 \
		www/p5-libwww

.include <bsd.port.mk>
