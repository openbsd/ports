COMMENT=		Advanced Intrusion Detection Environment (file mod checker)

V=			0.19.3
DISTNAME=		aide-${V}
REVISION=		0

CATEGORIES=		security

HOMEPAGE=		https://github.com/aide/aide

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c m lib/nettle3/nettle pcre2-8 pthread z

SITES=			https://github.com/aide/aide/releases/download/v${V}/

BUILD_DEPENDS=		devel/bison \
			devel/check
LIB_DEPENDS=		devel/pcre2 \
			security/libnettle

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="bison -y"

CONFIGURE_ENV +=	LDFLAGS="-Wl,-rpath,${LOCALBASE}/lib/nettle3" \
			PKG_CONFIG_PATH=${LOCALBASE}/lib/nettle3/pkgconfig

.include <bsd.port.mk>
