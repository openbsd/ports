# $OpenBSD: Makefile,v 1.1.1.1 2005/11/09 09:21:54 wilfried Exp $

COMMENT=	"Library for direct-connect protocol"

VERSION=	0.3.7
DISTNAME=	dclib-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://dcgui.berlios.de/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.berlios.de/dcgui/

MODULES=	converters/libiconv
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	bz2::archivers/bzip2 \
		xml2::textproc/libxml
WANTLIB=	crypto m ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
