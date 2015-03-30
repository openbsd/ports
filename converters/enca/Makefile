# $OpenBSD: Makefile,v 1.7 2015/03/30 10:51:48 giovanni Exp $

COMMENT=	detect character set and encoding of text files

DISTNAME=	enca-1.16
SHARED_LIBS +=  enca                 0.0      # 5.1
CATEGORIES=	converters textproc

HOMEPAGE=	http://cihar.com/software/enca/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://dl.cihar.com/enca/

WANTLIB += c m recode

MODULES=		devel/gettext

BUILD_DEPENDS=		converters/p5-Unicode-Map8
LIB_DEPENDS=		converters/recode

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-librecode=${LOCALBASE}

.include <bsd.port.mk>
