# $OpenBSD: Makefile,v 1.1.1.1 2002/01/25 20:11:42 naddy Exp $

COMMENT=	"yet another windowmanager for X, based on blackbox"

DISTNAME=	fluxbox-0.1.6
CATEGORIES=	x11
NEED_VERSION=	1.504

HOMEPAGE=	http://fluxbox.sourceforge.net/

MAINTAINER=	Han Boetes <han@mijncomputer.nl>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= fluxbox

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-gnome --enable-kde

USE_X11=	Yes

.include <bsd.port.mk>
