COMMENT=		PDF-generating toolkit for Python

# XXX 3.6.x drops py2 support; graphics/sk1 needs it
MODPY_EGG_VERSION=	3.5.68
DISTNAME=		reportlab-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			0

# see patches/patch-setup_py
# grep 'zipdata =' `make show=WRKSRC`/setup.py
PFBFER=			pfbfer-20180109.zip
SUBST_VARS=		FULLDISTDIR PFBFER WRKINST MODPY_SITEPKG
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			${PFBFER}:0

CATEGORIES=		print graphics

HOMEPAGE=		https://www.reportlab.com

# BSD, LGPLv2, MPL1.0, MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} art_lgpl_2 freetype pthread

MASTER_SITES0=		https://www.reportlab.com/ftp/

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PI_DIR=		r/reportlab
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		graphics/libart

.if ${FLAVOR:Mpython3}
RUN_DEPENDS=		graphics/py-Pillow${MODPY_FLAVOR}
.else
RUN_DEPENDS=		graphics/py2-Pillow
.endif
BUILD_DEPENDS=		${RUN_DEPENDS}

# requires network access
TEST_IS_INTERACTIVE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/docs/genAll.py \
		${WRKSRC}/docs/userguide/genuserguide.py

.if ${FLAVOR:Mpython3}
post-install:
	cd ${WRKSRC}/docs && \
		${MAKE_ENV} PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION} \
		${MODPY_BIN} genAll.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-reportlab
	${INSTALL_DATA} ${WRKBUILD}/docs/reportlab-userguide.pdf \
		${PREFIX}/share/doc/py-reportlab
.endif

do-test:
	cd ${WRKSRC}/tests && \
		${MAKE_ENV} PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION} \
		${MODPY_BIN} ./runAll.py

.include <bsd.port.mk>
