# $OpenBSD: Makefile,v 1.2 2001/09/13 21:38:24 lebel Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			0.16
DISTNAME=		libglade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.384
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/libglade

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		gnome
FLAVOR?=

LIB_DEPENDS=		intl.1::devel/gettext \
			xml.9::textproc/libxml1 \
			gtk.1.2::x11/gtk+

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36::x11/gnome/libs
CONFIGURE_ARGS+=	--with-gnome
.else
CONFIGURE_ARGS+=	--without-gnome
.endif

.include <bsd.port.mk>
