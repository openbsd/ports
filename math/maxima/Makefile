# $OpenBSD: Makefile,v 1.32 2015/09/20 06:50:26 feinerer Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.37.2
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/
MAINTAINER=		Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ecl ffi gc gmp m pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes

# Python is not needed for building but configure fails without it.
# Instead of patching just add the lang/python dependency.
# http://sourceforge.net/p/maxima/mailman/message/34462954/
MODULES =		lang/python
MODPY_RUNDEP =		No

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
BUILD_DEPENDS +=	${MODTK_BUILD_DEPENDS}
CONFIGURE_ARGS +=	--with-wish=${MODTK_BIN}
.endif

.include <bsd.port.mk>
