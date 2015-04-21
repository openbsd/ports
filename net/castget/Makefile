# $OpenBSD: Makefile,v 1.16 2015/04/21 18:51:25 sthen Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-1.0.1
REVISION=		5
SHARED_LIBS +=	castget              0.0      # .0.0
CATEGORIES=		net

HOMEPAGE=		http://www.nongnu.org/castget

MASTER_SITES=          	${MASTER_SITE_SAVANNAH:=castget/}

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl glib-2.0 id3 idn lzma m pcre pthread ssl stdc++
WANTLIB += xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=            audio/id3lib \
			devel/glib2 \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=          CPPFLAGS="-lm -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/castget
	${INSTALL_DATA} ${WRKSRC}/castgetrc.example \
		${PREFIX}/share/examples/castget

.include <bsd.port.mk>
