# $OpenBSD: Makefile,v 1.22 2012/09/20 14:41:26 ajacoutot Exp $

COMMENT=	C++ wrapper for the libxml XML parser library

V=		2.34.2
DISTNAME=	libxml++-$V
REVISION=	3
SHARED_LIBS+=	xml++-2.6	1.0 # .2.7
CATEGORIES=	textproc

EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://libxmlplusplus.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# LGPL >= 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libxml++/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

WANTLIB += ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread sigc-2.0 stdc++ xml2 z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2mm \
		textproc/libxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	docdir="${PREFIX}/share/doc/libxml++-2.6"

.include <bsd.port.mk>
