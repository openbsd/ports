# $OpenBSD: Makefile,v 1.1.1.1 2012/01/14 08:55:17 sebastia Exp $

COMMENT =		library for handling data matrix barcodes

DISTNAME =		libdmtx-0.7.4
CATEGORIES =		devel graphics
SHARED_LIBS +=		dmtx	0.0 # 0.0

HOMEPAGE =		http://www.libdmtx.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# BSD
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

WANTLIB +=		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
