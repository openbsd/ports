# $OpenBSD: Makefile,v 1.17 2002/11/27 17:39:12 brad Exp $

COMMENT=	"blackbox-derived window manager with Gnome and KDE support"

VERSION=		0.1.13
DISTNAME=		fluxbox-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}
MASTER_SITES0=		http://fluxbox.org/download/patches/
PATCHFILES=		# fluxbox-${VERSION}-bugfix2.patch:0
PATCH_DIST_STRIP=       -p1

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS=		--enable-kde --enable-xinerama
USE_GMAKE=		Yes

USE_X11=		Yes
SUBST_VARS=		VERSION

# Workaround to disable the use of automake.
post-patch:
	@cd ${WRKSRC}; touch aclocal.m4
	@find ${WRKSRC} -name 'Makefile.in' -exec touch {} \;

.include <bsd.port.mk>
