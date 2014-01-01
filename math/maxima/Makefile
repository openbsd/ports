# $OpenBSD: Makefile,v 1.29 2014/01/01 20:46:28 naddy Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.29.1
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes

LIB_DEPENDS=		lang/ecl
RUN_DEPENDS =		misc/rlwrap
WANTLIB +=		c gc gmp m pthread ecl

SUBST_VARS=		VERSION

CONFIGURE_ARGS+=	--enable-ecl
CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
MODULES+=		x11/tk
RUN_DEPENDS +=		${MODTK_RUN_DEPENDS} \
			math/gnuplot
BUILD_DEPENDS +=	${MODTK_RUN_DEPENDS}
CONFIGURE_ARGS +=	--with-wish=${MODTK_BIN}
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
