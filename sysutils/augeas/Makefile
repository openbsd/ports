COMMENT=		configuration editing tool and API

V=			1.14.1
DISTNAME=		augeas-${V}

CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    1.0 # 25.0
SHARED_LIBS +=  fa                        0.0 # 6.3

HOMEPAGE=		https://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv lzma m pthread readline xml2 z

SITES=		https://github.com/hercules-team/augeas/releases/download/release-${V}/

LIB_DEPENDS=		converters/libiconv \
			textproc/libxml

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-compile-warnings=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
