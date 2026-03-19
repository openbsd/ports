COMMENT =	Digital Forensics Virtual File System (dfVFS)

MODPY_DISTV =	20240505
DISTNAME =	dfvfs-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfvfs/wiki

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SITES =		https://github.com/log2timeline/dfvfs/releases/download/${MODPY_DISTV}/

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
RUN_DEPENDS += 	devel/py-dtfabric \
		devel/py-six \
		security/libbde \
		security/libewf \
		security/py-dfdatetime \
		sysutils/libfsapfs \
		sysutils/libfsntfs \
		sysutils/libfvde \
		sysutils/libfwnt \
		sysutils/libluksde \
		sysutils/libqcow \
		sysutils/libsigscan \
		sysutils/libsmdev \
		sysutils/libsmraw \
		sysutils/libvhdi \
		sysutils/libvmdk \
		sysutils/libvshadow \
		sysutils/libvslvm \
		sysutils/libyal/libfcrypto \
		sysutils/libyal/libfsext \
		sysutils/libyal/libfsfat \
		sysutils/libyal/libfshfs \
		sysutils/libyal/libfsxfs \
		sysutils/libyal/libmodi \
		sysutils/libyal/libphdi \
		sysutils/libyal/libvsapm \
		sysutils/libyal/libvsgpt \
		sysutils/py-tsk \
		textproc/py-yaml

TEST_DEPENDS +=	devel/py-mock

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
