# $OpenBSD: Makefile,v 1.6 2015/03/16 18:07:48 naddy Exp $

COMMENT =		library for rasterizing 2-D vector graphics

DISTNAME =		libxmi-1.2
REVISION =		1

SHARED_LIBS +=		xmi	0.0

CATEGORIES =		graphics

HOMEPAGE =		https://www.gnu.org/software/libxmi/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m

MASTER_SITES =		${MASTER_SITE_GNU:=libxmi/}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
