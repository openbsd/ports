# $OpenBSD: Makefile,v 1.11 2002/06/07 16:58:57 brad Exp $

COMMENT=	"blackbox-derived window manager with Gnome and KDE support"

VERSION=		0.1.9
DISTNAME=		fluxbox-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11
NEED_VERSION=		1.531
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}
MASTER_SITES0=		http://fluxbox.sourceforge.net/download/patches/

PATCHFILES=		fluxbox-${VERSION}-bugfix2.patch:0
PATCH_DIST_STRIP=	-p1

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
