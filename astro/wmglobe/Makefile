# $OpenBSD: Makefile,v 1.24 2010/10/24 20:58:59 ajacoutot Exp $

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

REVISION =	2
WANTLIB=		X11 Xext Xpm c m z jpeg tiff png ungif wraster

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		::graphics/jpeg \
			::graphics/tiff \
			::graphics/png \
			::graphics/libungif \
			::x11/windowmaker

MAKE_ENV=		CC="${CC}"
NO_REGRESS=		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
