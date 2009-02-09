# $OpenBSD: Makefile,v 1.15 2009/02/09 18:02:29 ajacoutot Exp $

COMMENT=	GTK+ 2.x engine based on Bluecurve

VERSION=	0.6.2
DISTNAME=	clearlooks-${VERSION}
PKGNAME=	gtk2-clearlooks-engine-${VERSION}p8
CATEGORIES=	x11

HOMEPAGE=	http://clearlooks.sourceforge.net/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clearlooks/}
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	::x11/gtk+2
RUN_DEPENDS=	:gtk-engines2->=2.16.1p2:x11/gtk-engines2

SHARED_ONLY=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu 

# remove files already provided by gtk-engines2
post-install:
	rm -rf ${PREFIX}/lib/
	rm -rf ${PREFIX}/share/themes/Clearlooks/gtk-2.0/

.include <bsd.port.mk>
