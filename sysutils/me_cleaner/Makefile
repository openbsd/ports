COMMENT =	tool for partial deblobbing of Intel ME/TXE firmware images

GH_ACCOUNT =		corna
GH_PROJECT =		me_cleaner
GH_TAGNAME =		v1.2
REVISION =		2

DISTFILES =		me_cleaner-{}${GH_TAGNAME}${EXTRACT_SUFX}

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/me_cleaner

post-install:
	mv ${PREFIX}/bin/me_cleaner{.py,}
	${INSTALL_MAN} ${WRKSRC}/man/me_cleaner.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
