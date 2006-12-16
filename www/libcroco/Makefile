# $OpenBSD: Makefile,v 1.2 2006/12/16 12:22:35 espie Exp $

COMMENT=		"generic CSS parsing library for GNOME project"

DISTNAME=		libcroco-0.6.1
SHARED_LIBS +=	croco-0.6            3.1      # .3.1
CATEGORIES=		www devel x11/gnome

HOMEPAGE=		http://www.freespiders.org/projects/libcroco/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z m

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libcroco/0.6/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		glib-2.0::devel/glib2 \
			xml2::textproc/libxml

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
