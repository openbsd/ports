# $OpenBSD: Makefile,v 1.48 2022/03/10 12:03:33 kn Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.12.0
REVISION=		1

CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.2 # 24.0
SHARED_LIBS +=  fa                        0.0 # 5.4

HOMEPAGE=		https://augeas.net/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

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
