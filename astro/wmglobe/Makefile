# $OpenBSD: Makefile,v 1.29 2013/09/25 07:56:56 sthen Exp $

COMMENT=		wm-dockapp; displays the earth on an icon

DISTNAME=		wmglobe-1.3
REVISION=		5
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://hamete.org/static/wmg/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c m z jpeg tiff png gif wraster

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		graphics/jpeg \
			graphics/tiff \
			graphics/png \
			graphics/giflib \
			x11/windowmaker

MAKE_ENV=		CC="${CC}"
NO_TEST=		Yes
USE_GROFF =		Yes

.include <bsd.port.mk>
