# $OpenBSD: Makefile,v 1.5 2002/04/27 13:25:59 lebel Exp $

COMMENT=	"Blackbox-derived window manager with Gnome and KDE support"

DISTNAME=		fluxbox-0.1.8
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11
NEED_VERSION=		1.522
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	fluxbox

HOMEPAGE=	http://fluxbox.sourceforge.net/

MAINTAINER=	Han Boetes <han@mijncomputer.nl>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gnome --enable-kde

USE_X11=		Yes

.include <bsd.port.mk>
