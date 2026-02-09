COMMENT=	lightweight regexp matching library with additional features

V=			0.9.0
DISTNAME=		tre-$V
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/laurikari/tre
SITES=			${HOMEPAGE}/releases/download/v$V/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE=	Yes

SHARED_LIBS +=	tre                  7.1      # 5.0

WANTLIB=		c iconv intl pthread

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
