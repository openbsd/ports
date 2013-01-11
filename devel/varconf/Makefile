# $OpenBSD: Makefile,v 1.18 2013/01/11 13:44:24 ajacoutot Exp $

COMMENT=	configuration system for the STAGE server

DISTNAME=	varconf-0.6.6
REVISION=	1
SHARED_LIBS=    varconf-1.0 0.0 # 0.0
CATEGORIES=	devel

HOMEPAGE=	http://www.worldforge.org/dev/eng/libraries/varconf

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=worldforge/}

USE_LIBTOOL= 		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

WANTLIB=		m sigc-2.0 stdc++

LIB_DEPENDS=		devel/libsigc++-2

FAKE_FLAGS+=		docdir="${PREFIX}/share/doc/varconf"

.include <bsd.port.mk>
