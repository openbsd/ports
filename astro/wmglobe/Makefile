# $OpenBSD: Makefile,v 1.28 2013/03/10 22:28:05 espie Exp $

COMMENT=		wm-dockapp; displays the earth on an icon

DISTNAME=		wmglobe-1.3
REVISION =		4
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://hamete.org/static/wmg/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c m z jpeg tiff png ungif wraster

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		graphics/jpeg \
			graphics/tiff \
			graphics/png \
			graphics/libungif \
			x11/windowmaker

MAKE_ENV=		CC="${CC}"
NO_TEST=		Yes
USE_GROFF =		Yes

.include <bsd.port.mk>
