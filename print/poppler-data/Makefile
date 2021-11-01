# $OpenBSD: Makefile,v 1.20 2021/11/01 18:32:43 kili Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.11
CATEGORIES =		print
HOMEPAGE =		https://poppler.freedesktop.org/

# Mixture of GPL2 and MIT and something similar to BSD4
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

FAKE_FLAGS = prefix=${LOCALBASE}

.include <bsd.port.mk>
