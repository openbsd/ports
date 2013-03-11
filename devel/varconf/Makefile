# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:31 espie Exp $

COMMENT=	configuration system for the STAGE server

DISTNAME=	varconf-0.6.6
REVISION=	1
SHARED_LIBS=    varconf-1.0 0.0 # 0.0
CATEGORIES=	devel

HOMEPAGE=	http://www.worldforge.org/dev/eng/libraries/varconf

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=worldforge/}

USE_LIBTOOL= 		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

WANTLIB=		m sigc-2.0 stdc++

LIB_DEPENDS=		devel/libsigc++-2

FAKE_FLAGS+=		docdir="${PREFIX}/share/doc/varconf"

.include <bsd.port.mk>
