COMMENT=	hangul input library

DISTNAME=	libhangul-0.1.0
DISTFILES=	3442-${DISTNAME}${EXTRACT_SUFX}
REVISION=	0

SHARED_LIBS=	hangul	1.0	# .1.0

CATEGORIES=	korean inputmethods

HOMEPAGE=	http://kldp.net/hangul/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

LIB_DEPENDS=	converters/libiconv \
		devel/gettext,-runtime

MASTER_SITES=	http://kldp.net/hangul/release/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
