# $OpenBSD: Makefile,v 1.1.1.1 2018/08/29 23:17:16 sthen Exp $

COMMENT =		Scientific PYthon Development EnviRonment

MODPY_EGG_VERSION =	3.3.0
DISTNAME =		spyder-${MODPY_EGG_VERSION}
PKGNAME =		spyder${MAJOR_VERSION}-${MODPY_EGG_VERSION}

HOMEPAGE =		https://github.com/spyder-ide/spyder

FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
MAJOR_VERSION =	3
PKGNAME =	spyder3-${MODPY_EGG_VERSION}
.else
MAJOR_VERSION =
.endif

SUBST_VARS +=	MAJOR_VERSION

RUN_DEPENDS +=	databases/py-pickleshare${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-jedi${MODPY_FLAVOR}>=0.11.0 \
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
		x11/py-qt5${MODPY_FLAVOR}<5.10 \
		x11/py-qtpy${MODPY_FLAVOR}>=1.2.0 \
		x11/py-qtawesome${MODPY_FLAVOR}>=0.4.1 \
		devel/spyder/py-spyder-kernels${MODPY_FLAVOR}<1.0

TEST_DEPENDS +=	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spyder/__init__.py

.include <bsd.port.mk>
