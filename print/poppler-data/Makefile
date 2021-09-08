# $OpenBSD: Makefile,v 1.19 2021/09/08 17:49:54 kili Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.10
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
