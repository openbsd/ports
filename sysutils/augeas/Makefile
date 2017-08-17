# $OpenBSD: Makefile,v 1.38 2017/08/17 19:42:03 jasper Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.8.0
REVISION=		0
CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.2 # 22.0
SHARED_LIBS +=  fa                        0.0 # 5.4

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv lzma m ncurses pthread readline xml2 z

MASTER_SITES=		http://download.augeas.net/

LIB_DEPENDS=		converters/libiconv \
			textproc/libxml

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-compile-warnings=yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
