COMMENT =	semantic grep, based on coccinelle

MODPY_EGG_VERSION = 1.20
DISTNAME =	coccigrep-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	devel textproc

HOMEPAGE =	http://home.regit.org/software/coccigrep/

# GPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
RUN_DEPENDS =	devel/coccinelle
NO_TEST =	Yes

MODPY_PYBUILD =	setuptools

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/coccigrep.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccigrep
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/coccigrep/
	${INSTALL_DATA} ${WRKSRC}/coccigrep.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
