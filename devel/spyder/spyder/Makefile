COMMENT =	Scientific PYthon Development EnviRonment

MODPY_EGG_VERSION =	4.2.5
DISTNAME =	spyder-${MODPY_EGG_VERSION}
PKGNAME =	spyder3-${MODPY_EGG_VERSION}

HOMEPAGE =	https://github.com/spyder-ide/spyder

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS +=	databases/py-pickleshare${MODPY_FLAVOR}>=0.4 \
		devel/desktop-file-utils \
		devel/ipython${MODPY_FLAVOR}>=7.6.0 \
		devel/py-atomicwrites${MODPY_FLAVOR}>=1.2.0 \
		devel/py-cloudpickle${MODPY_FLAVOR}>=0.5.0 \
		devel/py-intervaltree${MODPY_FLAVOR}>=3.0.2 \
		devel/py-jedi${MODPY_FLAVOR}>=0.17.2 \
		devel/py-jsonschema${MODPY_FLAVOR}>=3.2.0 \
		devel/py-nbconvert${MODPY_FLAVOR}>=4.0 \
		devel/py-parso${MODPY_FLAVOR}>=0.7.0 \
		devel/py-pexpect${MODPY_FLAVOR}>=4.4.0 \
		devel/py-pyls-black${MODPY_FLAVOR}>=0.4.6 \
		devel/py-pyls-spyder${MODPY_FLAVOR}>=0.3.2 \
		devel/py-python-language-server${MODPY_FLAVOR}>=0.36.2,<1.0.0 \
		devel/py-qdarkstyle${MODPY_FLAVOR}>=2.8,<3.0 \
		devel/py-three-merge${MODPY_FLAVOR}>=0.1.1 \
		devel/pylint${MODPY_FLAVOR}>=1.0 \
		net/py-zmq${MODPY_FLAVOR}>=17 \
		shells/py-qtconsole${MODPY_FLAVOR}>=5.0.3 \
		security/py-keyring${MODPY_FLAVOR}>=17.0.0 \
		sysutils/py-psutil${MODPY_FLAVOR}>=5.3 \
		sysutils/py-watchdog${MODPY_FLAVOR}>=0.10.3,<2.0.0 \
		textproc/py-chardet${MODPY_FLAVOR}>=2.0.0 \
		textproc/py-diff-match-patch${MODPY_FLAVOR}>=20181111 \
		textproc/py-numpydoc${MODPY_FLAVOR}>=0.6.0 \
		textproc/py-pygments${MODPY_FLAVOR}>=2.0 \
		textproc/py-sphinx${MODPY_FLAVOR}>=0.6.6 \
		textproc/py-textdistance${MODPY_FLAVOR}>=4.2.0 \
		www/py-qtwebengine${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR} \
		x11/py-qtpy${MODPY_FLAVOR}>=1.5.0 \
		x11/py-qtawesome${MODPY_FLAVOR}>=0.5.7 \
		devel/spyder/py-spyder-kernels${MODPY_FLAVOR}>=1.10.2,<1.11.0

TEST_DEPENDS +=	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spyder/__init__.py
	find ${WRKSRC} -name "*.py" -type f \
		-exec sed -i -e "s,'linux','openbsd',g" {} +

.include <bsd.port.mk>
