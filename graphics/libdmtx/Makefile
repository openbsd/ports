# $OpenBSD: Makefile,v 1.2 2013/03/11 11:10:53 espie Exp $

COMMENT =		library for handling data matrix barcodes

DISTNAME =		libdmtx-0.7.4
CATEGORIES =		devel graphics
SHARED_LIBS +=		dmtx	0.0 # 0.0

HOMEPAGE =		http://www.libdmtx.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
