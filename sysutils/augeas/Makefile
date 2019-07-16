# $OpenBSD: Makefile,v 1.45 2019/07/16 21:29:41 sthen Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.10.1
REVISION=		2

CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.2 # 22.0
SHARED_LIBS +=  fa                        0.0 # 5.4

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv lzma m pthread readline xml2 z

MASTER_SITES=		http://download.augeas.net/

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
