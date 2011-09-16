# $OpenBSD: Makefile,v 1.2 2011/09/16 11:13:39 espie Exp $

COMMENT =		python wrapper for the ENet library

MODPY_EGG_VERSION =	1.0
DISTNAME =		py-enet-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES =		net

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =	 	http://code.google.com/p/pyenet/
MASTER_SITES =		http://bsdgroup.org/distfiles/

# BSD-like 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

WANTLIB +=		enet ${MODPY_WANTLIB}

LIB_DEPENDS =	 	net/enet

BUILD_DEPENDS =		lang/cython

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
