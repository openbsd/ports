# $OpenBSD: Makefile,v 1.1.1.1 2007/09/21 17:45:43 jasper Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-1.0.0
SHARED_LIBS +=	castget              0.0      # .0.0
CATEGORIES=		net

HOMEPAGE=		http://www.nongnu.org/castget

MASTER_SITES=          	http://savannah.nongnu.org/download/castget/

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto idn m ssl stdc++ z

MODULES=		devel/gettext

LIB_DEPENDS=            id3::audio/id3lib \
			glib-2.0::devel/glib2 \
			curl::net/curl \
			xml2::textproc/libxml

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=          CPPFLAGS="-lm -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=    	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/castget
	${INSTALL_DATA} ${WRKSRC}/castgetrc.example \
		${PREFIX}/share/examples/castget

.include <bsd.port.mk>
