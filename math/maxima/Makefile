# $OpenBSD: Makefile,v 1.10 2009/06/17 23:27:49 sthen Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.16.1
DISTNAME=		maxima-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		ecl::lang/ecl
WANTLIB +=		c gc gmp m pthread

SUBST_VARS=		VERSION

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-ecl
.if !${FLAVOR:L:Mno_x11}
MODTK_VERSION=		8.4
MODULES=		x11/tk
RUN_DEPENDS+=		${MODTK_RUN_DEPENDS}
BUILD_DEPENDS=		${RUN_DEPENDS}
CONFIGURE_ARGS+=	--with-wish=${MODTCL_BIN}
.endif

.include <bsd.port.mk>
