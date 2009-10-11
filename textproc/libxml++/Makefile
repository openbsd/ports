# $OpenBSD: Makefile,v 1.9 2009/10/11 13:22:17 jasper Exp $

COMMENT=	C++ wrapper for the libxml XML parser library

V=		2.26.1
DISTNAME=	libxml++-$V
SHARED_LIBS+=	xml++-2.6	0.1 # .2.7
CATEGORIES=	textproc

HOMEPAGE=	http://libxmlplusplus.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPL >= 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libxml++/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

WANTLIB=	m z glib-2.0 gmodule-2.0 gobject-2.0 pcre sigc-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	glibmm-2.4.>=4.0::devel/glib2mm \
		xml2.>=9::textproc/libxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	docdir="${PREFIX}/share/doc/libxml++-2.6"

.include <bsd.port.mk>
