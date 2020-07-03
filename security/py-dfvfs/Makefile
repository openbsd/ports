# $OpenBSD: Makefile,v 1.13 2020/07/03 21:13:06 sthen Exp $

COMMENT =	Digital Forensics Virtual File System (dfVFS)

MODPY_EGG_VERSION = 20200211
DISTNAME =	dfvfs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfvfs/wiki

MASTER_SITES =	https://github.com/log2timeline/dfvfs/releases/download/${MODPY_EGG_VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=	devel/py-construct${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-dfdatetime${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		sysutils/py-tsk${MODPY_FLAVOR} \
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

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
