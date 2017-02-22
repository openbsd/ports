# $OpenBSD: Makefile,v 1.1.1.1 2017/02/22 19:15:59 rpointel Exp $

COMMENT =	Digital Forensics Virtual File System (dfVFS)

MODPY_EGG_VERSION = 20160918
DISTNAME =	py-dfvfs-${MODPY_EGG_VERSION}

GH_ACCOUNT =	log2timeline
GH_PROJECT =	dfvfs
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfvfs/wiki

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=	devel/py-construct \
		security/py-crypto \
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
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
