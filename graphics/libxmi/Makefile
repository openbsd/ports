# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:54 espie Exp $

COMMENT =		library for rasterizing 2-D vector graphics

DISTNAME =		libxmi-1.2

SHARED_LIBS +=		xmi	0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.gnu.org/software/libxmi/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m

MASTER_SITES =		${MASTER_SITE_GNU:=libxmi/}

SEPARATE_BUILD =	Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
