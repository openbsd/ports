# $OpenBSD: Makefile,v 1.4 2001/09/19 14:54:41 naddy Exp $

COMMENT=		"GNOME version of top"
V=			1.0.13
DISTNAME=		gtop-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.455
MAINTAINER=		Nils Nordman <nino@nforced.com>

HOMEPAGE=		http://www.gnome.org
MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gtop

LIB_DEPENDS=		gnome.36::x11/gnome/libs \
			gtop::devel/libgtop,gnome

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
