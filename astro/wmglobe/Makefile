# $OpenBSD: Makefile,v 1.3 2001/02/01 17:34:25 wilfried Exp $

DISTNAME=	wmglobe-1.1.alpha
PKGNAME=	wmglobe-1.1a
CATEGORIES=	astro x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://perso.linuxfr.org/jdumont/wmg/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1::graphics/png \
		gif.4::graphics/giflib \
		wraster.2::x11/windowmaker

USE_X11=	Yes

.include <bsd.port.mk>
