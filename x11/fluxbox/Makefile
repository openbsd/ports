# $OpenBSD: Makefile,v 1.14 2002/09/10 23:24:31 brad Exp $

COMMENT=	"blackbox-derived window manager with Gnome and KDE support"

VERSION=		0.1.11
DISTNAME=		fluxbox-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}
MASTER_SITES0=		http://fluxbox.org/download/patches/
PATCHFILES=		fluxbox-${VERSION}-bugfix2.patch:0
PATCH_DIST_STRIP=       -p1

HOMEPAGE=		http://fluxbox.org/

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
