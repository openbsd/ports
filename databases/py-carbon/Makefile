COMMENT=		backend data caching and persistence daemon for Graphite

MODPY_DISTV=		1.1.10

DISTNAME=		carbon-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases
REVISION=		5

# Apache
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MAKE_ENV=		GRAPHITE_NO_PREFIX=1

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/py-whisper \
			devel/py-twisted

MODPY_ADJ_FILES=	bin/*.py

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py ${WRKSRC}/lib/carbon/conf.py \
		${WRKSRC}/bin/validate-storage-schemas.py
	rm ${WRKSRC}/{bin/validate-storage-schemas,lib/carbon/conf}.py{${PATCHORIG},.beforesubst}

post-install:
	#mv ${WRKINST}${MODPY_SITEPKG}/conf ${PREFIX}/share/examples/graphite/

.include <bsd.port.mk>
