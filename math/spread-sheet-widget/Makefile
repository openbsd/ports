# $OpenBSD: Makefile,v 1.4 2020/07/22 15:33:14 bcallah Exp $

COMMENT =	spread sheet widget library
DISTNAME =	spread-sheet-widget-0.5
CATEGORIES =	math x11

SHARED_LIBS +=	spread-sheet-widget       0.2 # 0.2

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
