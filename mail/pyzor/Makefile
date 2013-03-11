# $OpenBSD: Makefile,v 1.10 2013/03/11 11:23:53 espie Exp $

COMMENT =		collaborative, networked system to detect and block spam

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		pyzor-${MODPY_EGG_VERSION}
REVISION =		2
CATEGORIES =		mail net

HOMEPAGE =		http://pyzor.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyzor/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

BUILD_DEPENDS +=	lang/python/${MODPY_VERSION},-gdbm

NO_TEST =		Yes

post-extract:
	chmod -R og+r ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/pyzor ${WRKSRC}/scripts/pyzord

.include <bsd.port.mk>
