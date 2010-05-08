# $OpenBSD: Makefile,v 1.5 2010/05/08 17:10:24 kili Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.4.2
CATEGORIES =		print
HOMEPAGE =		http://poppler.freedesktop.org/

# Mixture of GPL2 and MIT and something similar to BSD4
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}

PKG_ARCH =		*

RUN_DEPENDS =		::print/poppler

NO_BUILD =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
