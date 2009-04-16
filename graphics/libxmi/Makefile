# $OpenBSD: Makefile,v 1.1.1.1 2009/04/16 22:17:43 sthen Exp $

COMMENT =		library for rasterizing 2-D vector graphics

DISTNAME =		libxmi-1.2

SHARED_LIBS +=		xmi	0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.gnu.org/software/libxmi/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		m

MASTER_SITES =		${MASTER_SITE_GNU:=libxmi/}

SEPARATE_BUILD =	concurrent
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
