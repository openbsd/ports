# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:52 merdely Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://dcgui.berlios.de/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=dcgui/}

MODULES=	converters/libiconv
LIB_DEPENDS=	bz2::archivers/bzip2 \
		xml2::textproc/libxml
WANTLIB=	crypto m ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
