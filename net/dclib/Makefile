# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:46 espie Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	4
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://dcgui.berlios.de/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m ssl stdc++ z bz2 xml2

MASTER_SITES=	${MASTER_SITE_BERLIOS:=dcgui/}

MODULES=	converters/libiconv
LIB_DEPENDS=	archivers/bzip2 \
		textproc/libxml

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
