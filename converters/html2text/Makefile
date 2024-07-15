COMMENT=	advanced HTML-to-text converter

V=		2.2.3
DISTNAME=	html2text-$V
SITES=		https://github.com/grobian/html2text/releases/download/v$V/

CATEGORIES=	converters textproc

HOMEPAGE=	https://github.com/grobian/html2text

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc
LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
