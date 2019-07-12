# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:05 sthen Exp $

COMMENT =	analyze OLE files

MODPY_EGG_VERSION =	0.0.42
DISTNAME =	oledump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	oledump-${MODPY_EGG_VERSION}


CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/programs/oledump-py/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
RUN_DEPENDS =	security/yara/python \
		devel/py-olefile

NO_BUILD =	Yes
NO_TEST =	Yes

MODPY_ADJ_FILES += oledump.py

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/oledump/
	${INSTALL_SCRIPT} ${WRKSRC}/*.py ${PREFIX}/share/oledump/
	ln -s ${TRUEPREFIX}/share/oledump/oledump.py ${PREFIX}/bin/oledump

.include <bsd.port.mk>
