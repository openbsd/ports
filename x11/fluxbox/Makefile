# $OpenBSD: Makefile,v 1.12 2002/07/14 20:39:18 brad Exp $

COMMENT=	"blackbox-derived window manager with Gnome and KDE support"

VERSION=		0.1.10
DISTNAME=		fluxbox-${VERSION}
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}
MASTER_SITES0=		http://fluxbox.sourceforge.net/download/patches/

HOMEPAGE=		http://fluxbox.sourceforge.net/

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gnome --enable-kde --enable-xinerama

USE_X11=		Yes
SUBST_VARS=		VERSION

.include <bsd.port.mk>
