# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:03 sthen Exp $

COMMENT =		library for rasterizing 2-D vector graphics

DISTNAME =		libxmi-1.2
REVISION =		1

SHARED_LIBS +=		xmi	0.0

CATEGORIES =		graphics

HOMEPAGE =		https://www.gnu.org/software/libxmi/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		m

MASTER_SITES =		${MASTER_SITE_GNU:=libxmi/}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
