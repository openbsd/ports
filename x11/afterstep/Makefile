# $OpenBSD: Makefile,v 1.8 2000/02/22 20:27:33 turan Exp $

DISTNAME=	AfterStep-1.8.0
PKGNAME=	afterstep-1.8.0
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   YES
PERMIT_PACKAGE_FTP=     YES
PERMIT_DISTFILES_CDROM= YES
PERMIT_DISTFILES_FTP=   YES

LIB_DEPENDS=	png.1:${PORTSDIR}/graphics/png \
		jpeg.62:${PORTSDIR}/graphics/jpeg

INSTALL_TARGET=	install install.man

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${X11BASE} \
		--disable-save-windows \
		--enable-different-locknfeels

.include <bsd.port.mk>
