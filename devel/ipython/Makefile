# $OpenBSD: Makefile,v 1.58 2020/08/07 16:56:13 bket Exp $

COMMENT =		enhanced interactive Python shell

MODPY_EGG_VERSION =	7.17.0
DISTNAME =		ipython-${MODPY_EGG_VERSION}
PKGNAME =		ipython${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

# Optional dependency which gets picked up if it happens to be installed, thus
# causing race conditions under dpb. Pull it in to avoid this possibility.
BUILD_DEPENDS =		www/py-mako${MODPY_FLAVOR}

RUN_DEPENDS =		databases/py-pickleshare${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-backcall${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-jedi${MODPY_FLAVOR}>=0.10 \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-prompt_toolkit${MODPY_FLAVOR}>=2.0.0v1,<3.1.0v1 \
			devel/py-traitlets${MODPY_FLAVOR}>=4.2 \
			textproc/py-pygments${MODPY_FLAVOR}

# Note that if you have pdb++ installed OR are using PORTS_PRIVSEP, tests will
# fail.
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}>=0.10.1 \
			devel/py-testpath${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}>=1.14 \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
APPS_DIR = 	${PREFIX}/share/applications/

post-install:
	${INSTALL_DATA_DIR} ${APPS_DIR}

	chown -R ${SHAREOWN}:${SHAREGRP} \
		${WRKSRC}/examples/IPython\ Kernel/ipython.desktop
	mv ${WRKSRC}/examples/IPython\ Kernel/ipython.desktop \
		${APPS_DIR}/ipython.desktop

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

do-test:
	env LC_CTYPE=en_US.UTF-8 PYTHONNOUSERSITE=1 \
		${LOCALBASE}/bin/iptest

.include <bsd.port.mk>
