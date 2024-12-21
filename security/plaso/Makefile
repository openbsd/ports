COMMENT =		engine and tools to automate creation of super timeline

MODPY_DISTV =	20200717
REVISION =		5
DISTNAME =		plaso-${MODPY_DISTV}

CATEGORIES =		security

HOMEPAGE =		https://github.com/log2timeline/plaso/wiki

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

DISTNAME =	plaso-${MODPY_DISTV}

SITES =		https://github.com/log2timeline/plaso/releases/download/${MODPY_DISTV}/

MODULES =		lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS +=	archivers/py-lz4 \
		databases/py-redis \
		devel/py-bencode \
		devel/py-biplist \
		devel/py-cffi \
		devel/py-dateutil \
		devel/py-future \
		devel/py-parsing \
		devel/py-six \
		devel/py-tz \
		devel/py-xlsxwriter \
		net/py-zmq \
		security/libbde \
		security/libewf \
		security/py-artifacts \
		security/py-cryptography \
		security/py-dfdatetime \
		security/py-dfvfs \
		security/py-dfwinreg \
		security/py-pefile \
		security/yara/python \
		sysutils/libesedb \
		sysutils/libevt \
		sysutils/libevtx \
		sysutils/libfsapfs \
		sysutils/libfsntfs \
		sysutils/libfvde \
		sysutils/libfwnt \
		sysutils/libfwsi \
		sysutils/liblnk \
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
		textproc/py-chardet \
		textproc/py-defusedxml \
		textproc/py-yaml \
		www/py-requests \
		www/py-urllib3
		

TEST_DEPENDS +=	devel/py-test \
		devel/py-mock

pre-test:
	touch ${WRKSRC}/utils/__init__.py
	sed -i "s/python3-yara >= 3.4.0/python3-yara >= 3.11.0/" ${WRKSRC}/setup.cfg
do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
