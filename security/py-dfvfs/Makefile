# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:34 sthen Exp $

COMMENT =	Digital Forensics Virtual File System (dfVFS)

MODPY_EGG_VERSION = 20180510
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
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=	devel/py-construct \
		security/py-cryptodome \
		security/py-dfdatetime \
		devel/py-six \
		sysutils/py-tsk \
		security/libbde \
		security/libewf \
		sysutils/libfsntfs \
		sysutils/libfvde \
		sysutils/libfwnt \
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
