COMMENT =	analyze OLE files

MODPY_DISTV =	0.0.82
DISTNAME =	oledump_V${MODPY_DISTV:S/./_/g}
PKGNAME =	oledump-${MODPY_DISTV}

CATEGORIES =	security

HOMEPAGE =	https://blog.didierstevens.com/programs/oledump-py/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

SITES =		https://didierstevens.com/files/software/

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
