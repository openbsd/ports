# $OpenBSD: Makefile,v 1.21 2016/09/13 16:12:14 naddy Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	7
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://wxdcgui.sourceforge.net/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 crypto iconv lzma m pthread ssl stdc++ xml2 z

MASTER_SITES=	https://spacehopper.org/mirrors/berlios/dcgui/

LIB_DEPENDS=	archivers/bzip2 \
		converters/libiconv \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
