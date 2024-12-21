COMMENT =		console vCard address book

MODPY_DISTV =	0.19.1
DISTNAME =		khard-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/lucc/khard
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		textproc/py-sphinx \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-atomicwrites \
			devel/py-configobj \
			textproc/py-ruamel.yaml \
			textproc/py-unidecode \
			textproc/py-vobject

USE_GMAKE =		Yes

post-build:
	@cd ${WRKSRC} && \
		${MAKE_PROGRAM} -C doc man \
		SPHINXAPIDOC=${LOCALBASE}/bin/sphinx-apidoc \
		SPHINXBUILD=${LOCALBASE}/bin/sphinx-build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/khard
	cd ${WRKSRC}/doc/source/examples; \
	${INSTALL_DATA} template.yaml khard.conf.example \
		${PREFIX}/share/examples/khard
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/misc/zsh/{_khard,_email-khard} \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/build/man/khard.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/doc/build/man/khard.conf.5 \
		${PREFIX}/man/man5

.include <bsd.port.mk>
