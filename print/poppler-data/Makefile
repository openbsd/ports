# $OpenBSD: Makefile,v 1.17 2018/12/09 19:09:13 kili Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.9
CATEGORIES =		print
HOMEPAGE =		https://poppler.freedesktop.org/

# Mixture of GPL2 and MIT and something similar to BSD4
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

FAKE_FLAGS = prefix=${LOCALBASE}

.include <bsd.port.mk>
