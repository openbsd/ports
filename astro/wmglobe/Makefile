# $OpenBSD: Makefile,v 1.10 2001/11/10 11:13:48 heko Exp $

COMMENT=		'wm-dockapp; displays the earth on an icon'

DISTNAME=		wmglobe-1.3
CATEGORIES=		astro x11 x11/windowmaker
NEED_VERSION=		1.482

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
			ungif.5::graphics/libungif \
			wraster.4::x11/windowmaker

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
