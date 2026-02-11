COMMENT=	console vCard address book

MODPY_DISTV=	0.20.1
DISTNAME=	khard-${MODPY_DISTV}

CATEGORIES=	productivity

HOMEPAGE=	https://github.com/lucc/khard

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-configobj \
		textproc/py-ruamel.yaml \
		textproc/py-unidecode \
		textproc/py-vobject

# for manpage generation
USE_GMAKE=	Yes
BUILD_DEPENDS=	textproc/py-sphinx \
		textproc/py-sphinx-argparse \
		${RUN_DEPENDS}

post-build:
	cd ${WRKSRC} && \
		${MAKE_PROGRAM} -C doc man \
		SPHINXBUILD=${LOCALBASE}/bin/sphinx-build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/khard \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/misc/zsh/{_khard,_email-khard} \
		${PREFIX}/share/zsh/site-functions
	cd ${WRKSRC}/doc/source/examples; \
		${INSTALL_DATA} template.yaml khard.conf.example \
		    ${PREFIX}/share/examples/khard
	cd ${WRKSRC}/doc/build/man; \
		${INSTALL_DATA} khard*.1 ${PREFIX}/man/man1; \
		${INSTALL_DATA} khard.conf.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
