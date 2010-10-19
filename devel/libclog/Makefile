# $OpenBSD: Makefile,v 1.5 2010/10/19 21:04:52 naddy Exp $

COMMENT =		configurable logging library
DISTNAME =		clog-0.1
PKGNAME =		lib${DISTNAME}

REVISION =		1

SHARED_LIBS =		clog 1.1

CATEGORIES =		devel

HOMEPAGE =		http://opensource.conformal.com/wiki/Copious_Logger

MAINTAINER =		Chris Kuethe <ckuethe@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/clog/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes
MAKE_FLAGS=		PREFIX=${TRUEPREFIX}

post-install:
	${INSTALL_DATA} ${WRKSRC}/clog.h ${PREFIX}/include

.include <bsd.port.mk>
