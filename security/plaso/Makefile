COMMENT =	engine and tools to automate creation of super timeline

MODPY_DISTV =	20260119
DISTNAME =	plaso-${MODPY_DISTV}

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/plaso/wiki
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE =Yes

DISTNAME =	plaso-${MODPY_DISTV}

SITES =		https://github.com/log2timeline/plaso/releases/download/${MODPY_DISTV}/

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS +=	archivers/py-lz4 \
		archivers/py-zstd \
		databases/py-redis \
		devel/py-acstore \
		devel/py-bencode \
		devel/py-certifi \
		devel/py-cffi \
		devel/py-dateutil \
		devel/py-dtfabric \
		devel/py-flor \
		devel/py-parsing \
		devel/py-tz \
		devel/py-xlsxwriter \
		net/py-zmq \
		security/libbde \
		security/libewf \
		security/py-artifacts \
		security/py-dfdatetime \
		security/py-dfvfs \
		security/py-dfwinreg \
		security/py-pefile \
		security/yara/python \
		sysutils/libesedb \
		sysutils/libevt \
		sysutils/libevtx \
		sysutils/libfsapfs \
		sysutils/libyal/libcaes \
		sysutils/libyal/libcreg \
		sysutils/libyal/libfcrypto \
		sysutils/libyal/libfsext \
		sysutils/libyal/libfsfat \
		sysutils/libyal/libfshfs \
		sysutils/libyal/libfsxfs \
		sysutils/libyal/libmodi \
		sysutils/libyal/libphdi \
		sysutils/libyal/libvsapm \
		sysutils/libyal/libvsgpt \
		sysutils/libfsntfs \
		sysutils/libfvde \
		sysutils/libfwnt \
		sysutils/libfwsi \
		sysutils/liblnk \
		sysutils/libluksde \
		sysutils/libmsiecf \
		sysutils/libolecf \
		sysutils/libqcow \
		sysutils/libregf \
		sysutils/libscca \
		sysutils/libsigscan \
		sysutils/libsmdev \
		sysutils/libsmraw \
		sysutils/libvhdi \
		sysutils/libvmdk \
		sysutils/libvshadow \
		sysutils/libvslvm \
		sysutils/py-psutil \
		sysutils/py-tsk \
		textproc/py-defusedxml \
		www/py-requests

TEST_DEPENDS +=	devel/py-test \
		devel/py-mock

pre-test:
	touch ${WRKSRC}/utils/__init__.py
	sed -i "s/python3-yara >= 3.4.0/python3-yara >= 3.11.0/" ${WRKSRC}/setup.cfg
do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
