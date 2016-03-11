# $OpenBSD: Makefile,v 1.14 2016/03/11 19:59:12 naddy Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.10.0
SHARED_LIBS +=  check                3.0      # unknown

CATEGORIES =	devel

HOMEPAGE =	http://check.sf.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=check/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
