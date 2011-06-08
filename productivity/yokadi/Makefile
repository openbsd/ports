# $OpenBSD: Makefile,v 1.4 2011/06/08 17:37:46 jasper Exp $

COMMENT =	command-line oriented todo list system

CATEGORIES =	productivity

MODPY_EGG_VERSION = 0.10
DISTNAME =	yokadi-${MODPY_EGG_VERSION}.0
REVISION =	1

MASTER_SITES =	${HOMEPAGE}/download/
HOMEPAGE =	http://yokadi.github.com/
EXTRACT_SUFX =	.tar.bz2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST =	${WRKDIR}/yokadi-${MODPY_EGG_VERSION}
MODULES =	lang/python
NO_REGRESS =	Yes

RUN_DEPENDS =	devel/py-dateutil \
		databases/py-sqlobject

pre-configure:
	${SUBST_CMD} ${WRKSRC}/update/{dump.py,update{.py,1to2,2to3,3to4}} \
		${WRKSRC}/src/bin/yokadi{,d}

pre-fake:
	rm -f ${WRKSRC}/update/*.{orig,bak}

.include <bsd.port.mk>
