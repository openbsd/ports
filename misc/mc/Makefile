# $OpenBSD: Makefile,v 1.27 2006/10/25 13:06:58 ajacoutot Exp $

COMMENT=	"free Norton Commander clone with many useful features"

DISTNAME=	mc-4.6.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc

HOMEPAGE=	http://www.ibiblio.org/mc/
MASTER_SITES=	http://www.ibiblio.org/pub/Linux/utils/file/managers/mc/
MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.>=0.8,gmodule-2.0.>=0.8::devel/glib2
RUN_DEPENDS=	:unzip-*:archivers/unzip \
		:zip-*:archivers/zip

CONFIGURE_STYLE=gnu	
CONFIGURE_ARGS=	--with-vfs --with-samba --without-mcfs --enable-charset
CONFIGURE_ENV=	LOCALBASE=${LOCALBASE}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
USE_GMAKE=	Yes

.include <bsd.port.mk>
