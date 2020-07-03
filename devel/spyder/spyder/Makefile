# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:53 sthen Exp $

COMMENT =		Scientific PYthon Development EnviRonment

MODPY_EGG_VERSION =	3.3.3
REVISION =		4
DISTNAME =		spyder-${MODPY_EGG_VERSION}
PKGNAME =		spyder3-${MODPY_EGG_VERSION}

PORTROACH=		limit:^3

HOMEPAGE =		https://github.com/spyder-ide/spyder

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS +=	databases/py-pickleshare${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-jedi${MODPY_FLAVOR}>=0.9.0 \
		devel/py-nbconvert${MODPY_FLAVOR} \
		devel/py-rope${MODPY_FLAVOR}>=0.10.5 \
		devel/pyflakes${MODPY_FLAVOR} \
		devel/pylint${MODPY_FLAVOR} \
		net/py-zmq${MODPY_FLAVOR} \
		shells/py-qtconsole${MODPY_FLAVOR}>=4.2.0 \
		security/py-keyring${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR}>=2.0.0 \
		textproc/py-numpydoc${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}>=2.0 \
		textproc/py-sphinx${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR} \
		x11/py-qtpy${MODPY_FLAVOR}>=1.5.0 \
		x11/py-qtawesome${MODPY_FLAVOR}>=0.4.1 \
		devel/spyder/py-spyder-kernels${MODPY_FLAVOR}<1.0

TEST_DEPENDS +=	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spyder/__init__.py

.include <bsd.port.mk>
