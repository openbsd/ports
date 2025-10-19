COMMENT =	Scientific PYthon Development EnviRonment

# spyder 6.2.0 should have better support for Qt6, for now
# stick to qt5 and qtwebengine. (See issue #20201).

MODPY_DISTV =	6.1.0
DISTNAME =	spyder-${MODPY_DISTV}

HOMEPAGE =	https://github.com/spyder-ide/spyder

RUN_DEPENDS =	databases/py-pickleshare>=0.4 \
		devel/desktop-file-utils \
		devel/ipython>=8.15.0,<10.0.0 \
		devel/py-atomicwrites>=1.2.0 \
		devel/py-cloudpickle>=0.5.0 \
		devel/py-cookiecutter>=1.6.0 \
		devel/py-pygithub>=2.3.0 \
		devel/py-intervaltree>=3.0.2 \
		devel/py-jedi>=0.17.2,<0.20.0 \
		devel/py-jsonschema>=3.2.0 \
		devel/py-nbconvert>=4.0 \
		devel/py-parso>=0.7.0,<0.9.0 \
		devel/py-pexpect>=4.4.0 \
		devel/py-python-lsp-black>=2.0.0,<3.0.0 \
		devel/py-pylint_venv>=3.0.2 \
		devel/py-pyls-spyder>=0.4.0 \
		devel/py-python-lsp-server>=1.13.0,<1.14.0 \
		devel/py-python-lsp-ruff>=2.3.0,<3.0.0 \
		devel/py-qdarkstyle>=3.2.0,<3.3.0 \
		devel/py-qstylizer>=0.2.2 \
		devel/py-rtree>=0.9.7 \
		devel/py-three-merge>=0.1.1 \
		devel/pylint>=3.1,<4 \
		net/py-zmq>=24.0.0 \
		shells/py-qtconsole>=5.7.0,<5.8.0 \
		security/py-asyncssh>=2.14.0,<3.0.0 \
		security/py-bcrypt>=4.3.0 \
		security/py-keyring>=17.0.0 \
		sysutils/py-packaging>=20.0 \
		sysutils/py-psutil>=5.3 \
		sysutils/py-watchdog>=0.10.3 \
		textproc/py-chardet>=2.0.0 \
		textproc/py-diff-match-patch>=20181111 \
		textproc/py-ipython_pygments_lexers>=1.0 \
		textproc/py-jellyfish>=0.7 \
		textproc/py-numpydoc>=0.6.0 \
		textproc/py-pygments>=2.0 \
		textproc/py-pyuca>=1.2 \
		textproc/py-sphinx \
		textproc/py-textdistance>=4.2.0 \
		x11/py-qt5>=5.15,<5.16 \
		x11/py-superqt>=0.6.2,<1.0.0 \
		www/py-aiohttp>=3.11.2 \
		www/py-qtwebengine>=5.15,<5.16 \
		www/py-yarl>=1.9.4 \
		x11/py-qtpy>=2.4.0 \
		x11/py-qtawesome>=1.4.0,<1.5.0 \
		devel/spyder/py-spyder-kernels>=3.1.0,<3.2.0

TEST_DEPENDS =	devel/py-importlib-metadata

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spyder/__init__.py
	find ${WRKSRC} -name "*.py" -type f \
		-exec sed -i -e "s,'linux','openbsd',g" {} +

.include <bsd.port.mk>
