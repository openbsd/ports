# $OpenBSD: Makefile,v 1.2 2009/08/16 12:19:42 ajacoutot Exp $

COMMENT =		encoding files for poppler
DISTNAME =		poppler-data-0.2.1
PKGNAME =		${DISTNAME}p0
CATEGORIES =		print
HOMEPAGE =		http://poppler.freedesktop.org/

# Free redistribution without modifications.
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
