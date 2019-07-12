# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:46 sthen Exp $

COMMENT =	spread sheet widget library
DISTNAME =	spread-sheet-widget-0.3
CATEGORIES =	math x11

SHARED_LIBS +=	spread-sheet-widget       0.0 # 0.0

HOMEPAGE =	https://www.gnu.org/software/ssw/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

MASTER_SITES =	https://alpha.gnu.org/gnu/ssw/

BUILD_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

.include <bsd.port.mk>
