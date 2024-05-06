COMMENT= generate SCons/Makefiles from platform-independent input

GH_ACCOUNT=	chromium
GH_PROJECT=	gyp
GH_COMMIT=	9d09418933ea2f75cc416e5ce38d15f62acd5c9a

DISTNAME=	gyp-0.20220714
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://bugs.chromium.org/p/gyp/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
TEST_DEPENDS=	devel/ninja

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gyp

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	# tests temporarily toggle write permissions, but this disrupts `make clean'.
	# avoid toggling altogether.
.for l in default all
	sed -ie "s;\(test\.writable(.*\)False);\1True);" \
		${WRKSRC}/test/builddir/gyptest-${l}.py
.endfor
.for l in depth actions mac-bundle relocate copies rules subdir2-deep symlink top-all
	sed -ie "s;\(test\.writable(.*\)False);\1True);" \
		${WRKSRC}/test/generator-output/gyptest-${l}.py
.endfor
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MODPY_BIN} gyptest.py -a

.include <bsd.port.mk>
