# $OpenBSD: Makefile,v 1.6 2002/04/28 16:58:30 brad Exp $

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
CONFIGURE_ARGS=		--enable-gnome --enable-kde --enable-xinerama

USE_X11=		Yes

.include <bsd.port.mk>
