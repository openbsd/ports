# $OpenBSD: Makefile,v 1.21 2010/07/11 16:01:51 espie Exp $

COMMENT=		wm-dockapp; displays the earth on an icon

DISTNAME=		wmglobe-1.3
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://hamete.org/static/wmg/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION =	1
WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb z

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		jpeg.>=62::graphics/jpeg \
			tiff.>=35::graphics/tiff \
			png.>=2::graphics/png \
			ungif.>=5::graphics/libungif \
			wraster.>=4::x11/windowmaker

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
