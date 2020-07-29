# $OpenBSD: Makefile,v 1.5 2020/07/29 17:20:54 bcallah Exp $

COMMENT =	spread sheet widget library
DISTNAME =	spread-sheet-widget-0.6
CATEGORIES =	math x11

SHARED_LIBS +=	spread-sheet-widget       1.0 # 0.6

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
