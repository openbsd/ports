# $OpenBSD: Makefile,v 1.1.1.1 2003/06/12 20:16:58 marcm Exp $

COMMENT=		"the base GNOME icon theme"

DISTNAME=		gnome-icon-theme-1.0.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-icon-theme/1.0/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
