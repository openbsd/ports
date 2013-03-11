# $OpenBSD: Makefile,v 1.6 2013/03/11 11:37:55 espie Exp $

COMMENT =	command-line oriented todo list system

CATEGORIES =	productivity

MODPY_EGG_VERSION = 0.10
DISTNAME =	yokadi-${MODPY_EGG_VERSION}.0
REVISION =	2

MASTER_SITES =	${HOMEPAGE}/download/
HOMEPAGE =	http://yokadi.github.com/
EXTRACT_SUFX =	.tar.bz2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST =	${WRKDIR}/yokadi-${MODPY_EGG_VERSION}
MODULES =	lang/python
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-dateutil \
		databases/py-sqlobject

pre-configure:
	${SUBST_CMD} ${WRKSRC}/update/{dump.py,update{.py,1to2,2to3,3to4}} \
		${WRKSRC}/src/bin/yokadi{,d}

pre-fake:
	rm -f ${WRKSRC}/update/*.{orig,bak}

.include <bsd.port.mk>
