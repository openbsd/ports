# $OpenBSD: Makefile,v 1.16 2011/04/17 07:15:12 ajacoutot Exp $

COMMENT=	C++ wrapper for the libxml XML parser library

V=		2.34.0
DISTNAME=	libxml++-$V
SHARED_LIBS+=	xml++-2.6	1.0 # .2.7
CATEGORIES=	textproc

HOMEPAGE=	http://libxmlplusplus.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPL >= 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libxml++/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

WANTLIB += m z glib-2.0 gmodule-2.0 gobject-2.0 pcre sigc-2.0 gthread-2.0
WANTLIB += glibmm-2.4 xml2 stdc++

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/mm-common

LIB_DEPENDS=	devel/glib2mm \
		textproc/libxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	docdir="${PREFIX}/share/doc/libxml++-2.6"

# XXX when updating, check that this is still needed
CONFIGURE_ENV+= MMDOCTOOLDIR=`pkg-config --variable=doctooldir mm-common-util`

.include <bsd.port.mk>
