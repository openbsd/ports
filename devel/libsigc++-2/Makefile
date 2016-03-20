# $OpenBSD: Makefile,v 1.35 2016/03/20 11:57:38 ajacoutot Exp $

COMMENT=		callback framework for C++

GNOME_VERSION=		2.8.0
GNOME_PROJECT=		libsigc++
CATEGORIES=		devel

SHARED_LIBS +=  sigc-2.0             4.1      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MODULES=		x11/gnome

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
