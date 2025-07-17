COMMENT=	utility to turn simply formatted text into markup

MODPY_DISTV=	3.9
GH_ACCOUNT=	txt2tags
GH_PROJECT=	txt2tags
GH_TAGNAME=	${MODPY_DISTV}
CATEGORIES=	textproc

HOMEPAGE=	https://txt2tags.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

DOCDIR=		${PREFIX}/share/doc/txt2tags
EXAMPLESDIR=	${PREFIX}/share/examples/txt2tags

post-build:
.for i in markup userguide
	cd ${WRKSRC}/docs/$i && ${MODPY_BIN} ../../build/lib/txt2tags.py $i.t2t
.endfor

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLESDIR}{,/img,/css,/module}
	${INSTALL_DATA} ${WRKSRC}/extras/txt2tagsrc \
		${EXAMPLESDIR}/txt2tagsrc.dist
	${INSTALL_DATA} ${WRKSRC}/docs/*/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*.md ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.* ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/img/* ${EXAMPLESDIR}/img
	${INSTALL_DATA} ${WRKSRC}/samples/css/* ${EXAMPLESDIR}/css
	${INSTALL_DATA} ${WRKSRC}/samples/module/* ${EXAMPLESDIR}/module

do-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}; PATH=${WRKSRC}:${PORTPATH} ./test/run.py

.include <bsd.port.mk>
