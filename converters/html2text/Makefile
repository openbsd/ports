COMMENT=	advanced HTML-to-text converter

DIST_TUPLE=	gitlab grobian html2text 53babfc91d6cbfa74cc5b526b750286e0fc228e1 .
PKGNAME=	html2text-2.4.0pl20260113

CATEGORIES=	converters textproc

HOMEPAGE=	https://gitlab.com/grobian/html2text

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c iconv m ${COMPILER_LIBCXX}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc
LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.73
AUTOMAKE_VERSION= 1.18
BUILD_DEPENDS=	devel/bison \
		devel/gettext,-tools

# don't allow picking up curl (added post-2.3.0); if changing then
# pledge will need to be adapted.
CONFIGURE_ARGS=	--without-libcurl
CONFIGURE_ENV=	YACC="bison -y"

.include <bsd.port.mk>
