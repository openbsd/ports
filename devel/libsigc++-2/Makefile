# $OpenBSD: Makefile,v 1.27 2013/03/11 10:50:10 espie Exp $

COMMENT=		callback framework for C++

V=			2.2.11
DISTNAME=		libsigc++-${V}
CATEGORIES=		devel
REVISION=		0

SHARED_LIBS +=  sigc-2.0             2.0      # 0.0

API_V=			2.0
SUBST_VARS=		API_V

HOMEPAGE=		http://libsigc.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++

EXTRACT_SUFX=		.tar.xz
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libsigc++/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		M4='m4 -g'

.include <bsd.port.mk>
