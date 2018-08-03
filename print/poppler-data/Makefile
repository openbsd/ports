# $OpenBSD: Makefile,v 1.16 2018/08/03 07:19:39 espie Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.8
CATEGORIES =		print
HOMEPAGE =		http://poppler.freedesktop.org/

# Mixture of GPL2 and MIT and something similar to BSD4
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

FAKE_FLAGS = prefix=${LOCALBASE}

.include <bsd.port.mk>
