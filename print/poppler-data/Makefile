# $OpenBSD: Makefile,v 1.10 2011/11/26 19:51:13 kili Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.5
CATEGORIES =		print
HOMEPAGE =		http://poppler.freedesktop.org/

# Mixture of GPL2 and MIT and something similar to BSD4
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}

PKG_ARCH =		*

RUN_DEPENDS =		print/poppler

NO_BUILD =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
