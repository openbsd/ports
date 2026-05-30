COMMENT=		Advanced Intrusion Detection Environment (file mod checker)

V=			0.19.3
DISTNAME=		aide-${V}
REVISION=		1

CATEGORIES=		security

HOMEPAGE=		https://github.com/aide/aide

# GPLv2
PERMIT_PACKAGE=	Yes

# stdalign.h
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

# uses pledge()
WANTLIB += c m nettle pcre2-8 pthread z

SITES=			https://github.com/aide/aide/releases/download/v${V}/

BUILD_DEPENDS=		devel/bison \
			devel/check
LIB_DEPENDS=		devel/pcre2 \
			security/nettle

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="bison -y"

.include <bsd.port.mk>
