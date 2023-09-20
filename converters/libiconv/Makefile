COMMENT=	character set conversion library

DISTNAME=	libiconv-1.17
CATEGORIES=	converters devel
SITES=		${SITE_GNU:=libiconv/}

SHARED_LIBS=	charset		1.1 \
		iconv		7.1

HOMEPAGE=	https://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= --disable-nls \
		--docdir="${PREFIX}/share/doc/libiconv" \
		--enable-extra-encodings \
		--enable-static

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
