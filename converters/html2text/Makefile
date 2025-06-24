COMMENT=	advanced HTML-to-text converter

V=		2.3.0
REVISION=	2
DISTNAME=	html2text-$V

CATEGORIES=	converters textproc

HOMEPAGE=	https://gitlab.com/grobian/html2text
# gitlab is the main source, but release artefacts (e.g. the .tar.gz file)
# don't have a predictable url format, so use github for fetching
SITES=		https://github.com/grobian/html2text/releases/download/v$V/

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c iconv m ${COMPILER_LIBCXX}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc base-gcc
LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= gnu

# don't allow picking up curl (added post-2.3.0); if changing then
# pledge will need to be adapted.
CONFIGURE_ARGS=	--without-libcurl

.include <bsd.port.mk>
