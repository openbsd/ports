# $OpenBSD: Makefile,v 1.3 2003/12/04 23:07:25 pvalchev Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"simple, clean theme engine for GTK+2"

VERSION=		2.0.2
DISTNAME=		gtk-thinice-engine-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://thinice.sourceforge.net/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=thinice/}

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.11,gdk_pixbuf-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
