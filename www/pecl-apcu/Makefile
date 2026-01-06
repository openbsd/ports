COMMENT=	in-memory key-value store for PHP

DISTNAME=	apcu-5.1.28

# PHP
PERMIT_PACKAGE=	Yes

# not recorded in 'NEEDED', but uses pcre2 coming from PHP core's dep
# and needs the headers at build time, so it depends on ABI
WANTLIB=	pcre2-8

MODULES=	lang/php/pecl
LIB_DEPENDS=	devel/pcre2

CONFIGURE_STYLE= gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
