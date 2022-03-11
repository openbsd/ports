COMMENT =	vivisect analysis and debugging framework

MODPY_EGG_VERSION =	0.0.1a
DISTNAME =	vivisect-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

GH_ACCOUNT =	vivisect
GH_PROJECT =	vivisect
GH_COMMIT =	7be4037b1cecc4551b397f840405a1fc606f9b53

CATEGORIES =	security devel

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_ADJ_FILES =	vdbbin vivbin

do-build:
	${MODPY_BIN} -m compileall ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/
	${INSTALL_SCRIPT} ${WRKSRC}/vdbbin ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/vivbin ${PREFIX}/bin/
.for lib in Elf PE cobra envi vdb visgraph vivisect vqt vstruct vtrace
	cp -r ${WRKSRC}/${lib} ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/
.endfor

NO_TEST =		Yes

.include <bsd.port.mk>
