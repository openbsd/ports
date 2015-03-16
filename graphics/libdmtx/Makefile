# $OpenBSD: Makefile,v 1.3 2015/03/16 18:07:47 naddy Exp $

COMMENT =		library for handling data matrix barcodes

DISTNAME =		libdmtx-0.7.4
CATEGORIES =		devel graphics
SHARED_LIBS +=		dmtx	0.0 # 0.0
REVISION =		0

HOMEPAGE =		http://www.libdmtx.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
