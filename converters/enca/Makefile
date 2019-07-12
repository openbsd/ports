# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:49 sthen Exp $

COMMENT=		detect character set and encoding of text files

DISTNAME=		enca-1.19
SHARED_LIBS +=  enca                 0.0      # 5.1
CATEGORIES=		converters textproc
REVISION=		0

HOMEPAGE=		http://cihar.com/software/enca/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c iconv intl m recode

MASTER_SITES=		http://dl.cihar.com/enca/


BUILD_DEPENDS=		converters/p5-Unicode-Map8
LIB_DEPENDS=		converters/recode

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-rpath \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-librecode=${LOCALBASE}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
