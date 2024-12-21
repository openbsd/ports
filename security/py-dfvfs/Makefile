COMMENT =	Digital Forensics Virtual File System (dfVFS)

MODPY_DISTV =	20200625
DISTNAME =	dfvfs-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfvfs/wiki

SITES =		https://github.com/log2timeline/dfvfs/releases/download/${MODPY_DISTV}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
RUN_DEPENDS +=	devel/py-construct \
		security/py-cryptography \
		security/py-dfdatetime \
		devel/py-six \
		sysutils/py-tsk \
		security/libbde \
		security/libewf \
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
		sysutils/libvslvm

TEST_DEPENDS +=	devel/py-mock

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
