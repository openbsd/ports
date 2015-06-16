# $OpenBSD: Makefile,v 1.31 2015/06/16 05:04:43 feinerer Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.36.1
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/
MAINTAINER=		Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ecl ffi gc gmp m pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes

LIB_DEPENDS=		lang/ecl
RUN_DEPENDS =		misc/rlwrap

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

.include <bsd.port.mk>
