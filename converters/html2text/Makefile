COMMENT=	advanced HTML-to-text converter

V=		2.3.0
REVISION=	0
DISTNAME=	html2text-$V
SITES=		https://github.com/grobian/html2text/releases/download/v$V/

CATEGORIES=	converters textproc

HOMEPAGE=	https://github.com/grobian/html2text

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()

WANTLIB += c iconv m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc
LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= gnu
# don't allow picking up curl (added post-2.3.0); if changing then
# pledge will need to be adapted.
CONFIGURE_ARGS=	--without-libcurl

.include <bsd.port.mk>
