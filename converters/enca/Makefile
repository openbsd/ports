# $OpenBSD: Makefile,v 1.8 2015/03/30 20:01:25 juanfra Exp $

COMMENT=		detect character set and encoding of text files

DISTNAME=		enca-1.16
REVISION=		0
SHARED_LIBS +=  enca                 0.0      # 5.1
CATEGORIES=		converters textproc

HOMEPAGE=		http://cihar.com/software/enca/

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
			--disable-rpath \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-librecode=${LOCALBASE}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
