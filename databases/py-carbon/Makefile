COMMENT=		backend data caching and persistence daemon for Graphite

MODPY_DISTV=	1.1.10

DISTNAME=		carbon-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases
REVISION=		4

# Apache
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/py-whisper \
			devel/py-twisted

MODPY_ADJ_FILES+=	bin/*.py

GRAPHITE_EGDIR=		${PREFIX}/share/examples/graphite/

SUBST_VARS+=		GRAPHITE_EGDIR MODPY_SITEPKG

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.{cfg,py} ${WRKSRC}/lib/carbon/conf.py \
		${WRKSRC}/bin/validate-storage-schemas.py
	rm ${WRKSRC}/{bin/validate-storage-schemas,lib/carbon/conf}.py{${PATCHORIG},.beforesubst}

.include <bsd.port.mk>
