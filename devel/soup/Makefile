# $OpenBSD: Makefile,v 1.1.1.1 2002/12/03 19:39:32 marcm Exp $

COMMENT=		"a SOAP (Simple Object Access Protocol) implementation in C"

DISTNAME=		soup-0.7.4
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/soup/0.7/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib \
			popt::devel/popt \
			xml.9.17::textproc/libxml1

SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libxml=1
CONFIGURE_ARGS+=	--disable-glib2
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
