# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:02 sthen Exp $

COMMENT =		library for handling data matrix barcodes

DISTNAME =		libdmtx-0.7.4
CATEGORIES =		devel graphics
SHARED_LIBS +=		dmtx	0.0 # 0.0
REVISION =		0

HOMEPAGE =		http://www.libdmtx.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# BSD
PERMIT_PACKAGE =		Yes

WANTLIB +=		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
