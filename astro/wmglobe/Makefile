# $OpenBSD: Makefile,v 1.7 2001/05/24 02:27:06 kevlo Exp $

COMMENT=		'wm-dockapp; displays the earth on an icon'

DISTNAME=		wmglobe-1.1.alpha
PKGNAME=		wmglobe-1.1a
CATEGORIES=		astro x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://perso.linuxfr.org/jdumont/wmg/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png \
			gif.4::graphics/giflib \
			wraster.4::x11/windowmaker

USE_X11=		Yes

.include <bsd.port.mk>
