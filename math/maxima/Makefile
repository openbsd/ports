# $OpenBSD: Makefile,v 1.14 2010/10/18 20:52:06 espie Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.16.1
DISTNAME=		maxima-${VERSION}
REVISION=		3
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes

LIB_DEPENDS=		::lang/ecl
WANTLIB +=		c gc gmp m pthread ecl

SUBST_VARS=		VERSION

CONFIGURE_ARGS+=	--enable-ecl
CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

FLAVORS=		no_x11
FLAVOR?=

.if !${FLAVOR:L:Mno_x11}
MODTK_VERSION=		8.4
MODULES+=		x11/tk
RUN_DEPENDS+=		${MODTK_RUN_DEPENDS}
BUILD_DEPENDS=		${RUN_DEPENDS}
CONFIGURE_ARGS+=	--with-wish=${MODTCL_BIN}
.endif

.include <bsd.port.mk>
