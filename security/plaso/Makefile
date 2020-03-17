# $OpenBSD: Makefile,v 1.14 2020/03/17 22:18:14 rpointel Exp $

COMMENT =		engine and tools to automate creation of super timeline

MODPY_EGG_VERSION =	20200121
DISTNAME =		plaso-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/log2timeline/plaso/wiki

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

DISTNAME =	plaso-${MODPY_EGG_VERSION}

MASTER_SITES =	https://github.com/log2timeline/plaso/releases/download/${MODPY_EGG_VERSION}/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS +=	devel/py-bencode${MODPY_FLAVOR} \
		devel/py-biplist${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		devel/py-xlsxwriter${MODPY_FLAVOR} \
		net/py-zmq${MODPY_FLAVOR} \
		security/libbde \
		security/libewf \
		security/py-artifacts${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-dfdatetime${MODPY_FLAVOR} \
		security/py-dfvfs${MODPY_FLAVOR} \
		security/py-dfwinreg${MODPY_FLAVOR} \
		security/py-pefile${MODPY_FLAVOR} \
		security/yara/python${MODPY_FLAVOR} \
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
		sysutils/py-psutil${MODPY_FLAVOR} \
		sysutils/py-tsk${MODPY_FLAVOR} \
		textproc/py-chardet${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}
		

TEST_DEPENDS +=	devel/py-test${MODPY_FLAVOR}

pre-test:
	touch ${WRKSRC}/utils/__init__.py
do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
