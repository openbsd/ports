# $OpenBSD: Makefile,v 1.5 2003/12/01 04:13:07 marcm Exp $

COMMENT=		"GNOME 2.0 help browser"

VERSION=		2.4.1
DISTNAME=		yelp-${VERSION}
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/yelp/2.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=		:scrollkeeper->=0.3.6:textproc/scrollkeeper \
			:docbook-dsssl-*:textproc/docbook-dsssl
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gtkhtml-2::x11/gnome/libgtkhtml \
			exslt::textproc/libxslt

USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
