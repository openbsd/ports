# $OpenBSD: Makefile,v 1.91 2017/10/29 15:17:36 ajacoutot Exp $

COMMENT-main=		compiler for the GObject type system
COMMENT-valadoc=	Vala documentation generator

GNOME_PROJECT=		vala
GNOME_VERSION=		0.38.2

PKGNAME-main=		${DISTNAME}
PKGNAME-valadoc=	valadoc-${GNOME_VERSION}

REVISION-main=		0

# XXX API_V is used by x11/gnome/libgda
API_V=			0.38
SHARED_LIBS +=  vala-0.38            0.0      # 0.0
#SHARED_LIBS +=  valadoc-0.38            0.0      # 0.0

CATEGORIES=		lang

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi glib-2.0 gmodule-2.0 gobject-2.0 iconv intl pcre pthread

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/libxslt

# XXX cyclic: lang/vala -> math/graphviz -> x11/gnome/librsvg -> lang/vala
MULTI_PACKAGES =	-main #-valadoc

WANTLIB-main =		${WANTLIB}
LIB_DEPENDS-main =	devel/glib2

WANTLIB-valadoc =	${WANTLIB} \
			expat m vala-0.38 z
LIB_DEPENDS-valadoc =	lang/vala>=0.38

TEST_DEPENDS=		shells/bash

SUBST_VARS+=		API_V

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

.include <bsd.port.mk>
