# $OpenBSD: Makefile,v 1.3 2010/10/18 20:52:10 espie Exp $

COMMENT=	XKCD comic viewer

DISTNAME=	XKCD_viewer-0.1
PKGNAME=	${DISTNAME:L:S/_/-/}p0
CATEGORIES=	misc

MASTER_SITES=	http://www.autistici.org/fox/files/XKCD_viewer/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/XKCD_viewer
MODULES=	perl

CONFIGURE_STYLE=perl
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/p5-Gtk2 \
		::www/p5-libwww

.include <bsd.port.mk>
