# $OpenBSD: Makefile,v 1.29 2013/03/27 07:44:37 ajacoutot Exp $

COMMENT=		callback framework for C++

GNOME_VERSION=		2.2.11
GNOME_PROJECT=		libsigc++
CATEGORIES=		devel
REVISION=		1

SHARED_LIBS +=  sigc-2.0             2.0      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
