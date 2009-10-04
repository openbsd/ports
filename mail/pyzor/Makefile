# $OpenBSD: Makefile,v 1.5 2009/10/04 09:41:36 benoit Exp $

COMMENT =		collaborative, networked system to detect and block spam

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		pyzor-${MODPY_EGG_VERSION}
CATEGORIES =		mail net

HOMEPAGE =		http://pyzor.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyzor/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

BUILD_DEPENDS +=	:python-gdbm-*:lang/python/${MODPY_VERSION},-gdbm

NO_REGRESS =		Yes

post-extract:
	chmod -R og+r ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/pyzor ${WRKSRC}/scripts/pyzord

.include <bsd.port.mk>
