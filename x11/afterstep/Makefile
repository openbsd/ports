# $OpenBSD: Makefile,v 1.11 2000/03/27 01:05:20 espie Exp $

DISTNAME=	AfterStep-1.8.0
PKGNAME=	afterstep-1.8.0
CATEGORIES=     x11
NEED_VERSION=	1.230
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	png.1::graphics/png \
		jpeg.62::graphics/jpeg

INSTALL_TARGET=	install install.man

FAKE=		Yes
USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix=${X11BASE} \
		--disable-save-windows \
		--enable-different-locknfeels

.include <bsd.port.mk>
