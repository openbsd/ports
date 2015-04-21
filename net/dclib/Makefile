# $OpenBSD: Makefile,v 1.19 2015/04/21 18:53:15 sthen Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	7
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://wxdcgui.sourceforge.net/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 crypto lzma m pthread ssl stdc++ xml2 z

MASTER_SITES=	http://spacehopper.org/mirrors/berlios/dcgui/

MODULES=	converters/libiconv
LIB_DEPENDS=	archivers/bzip2 \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
