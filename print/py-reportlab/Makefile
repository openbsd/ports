COMMENT=	PDF-generating toolkit for Python

# 4.0+ removes the C extension and requires py-cairo and freetype-py instead
MODPY_DISTV=	3.6.13
DISTNAME=	reportlab-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
EPOCH=		0
REVISION=	1

# see patches/patch-setup_py
# grep 'zipdata =' `make show=WRKSRC`/setup.py
SITES.pfb=	https://www.reportlab.com/ftp/
DISTFILES.pfb=	pfbfer-20180109.zip
EXTRACT_ONLY=	${DISTFILES}

CATEGORIES=	print graphics

HOMEPAGE=	https://www.reportlab.com

# BSD, LGPLv2, MPL1.0, MIT
PERMIT_PACKAGE=	Yes

WANTLIB += art_lgpl_2 freetype

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

LIB_DEPENDS=	graphics/libart

RUN_DEPENDS=	graphics/py-Pillow
BUILD_DEPENDS=	${RUN_DEPENDS}

post-extract:
	cp ${FULLDISTDIR}/${DISTFILES.pfb} ${WRKSRC}/
	printf '[OPTIONS]\nuse-system-libart=true\n' > ${WRKSRC}/local-setup.cfg

post-install:
	cd ${WRKSRC}/docs && \
		${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} genAll.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-reportlab
	${INSTALL_DATA} ${WRKBUILD}/docs/reportlab-userguide.pdf \
		${PREFIX}/share/doc/py-reportlab

do-test:
	# some tests fail if you didn't already "make fake"
	cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runAll.py

.include <bsd.port.mk>
