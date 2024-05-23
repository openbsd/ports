COMMENT=	archive files using LZW compression (.lzh files)

DIST_TUPLE=	github jca02266 lha 4f193b1e98700aa2bc9dfeef11943efc1f036154 .
PKGNAME=	lha-1.14i.ac20230913
CATEGORIES=	archivers

MAINTAINER=	Yozo Toda <yozo@v007.vaio.ne.jp>

# Restrictive
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=		converters/libiconv

.include <bsd.port.mk>
