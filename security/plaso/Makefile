# $OpenBSD: Makefile,v 1.1.1.1 2017/02/23 13:53:07 rpointel Exp $

COMMENT =		engine and tools to automate creation of super timeline

MODPY_EGG_VERSION =	1.5.1
DISTNAME =		plaso-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/log2timeline/plaso/wiki

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =   log2timeline
GH_PROJECT =   plaso
GH_TAGNAME =   ${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS +=	devel/ipython \
		sysutils/libesedb \
		sysutils/libevt \
		sysutils/libevtx \
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
		devel/py-bencode \
		devel/py-binplist \
		devel/py-construct \
		devel/py-dateutil \
		devel/py-efilter \
		devel/py-hachoir-core \
		devel/py-hachoir-metadata \
		devel/py-hachoir-parser \
		devel/py-mock \
		devel/py-parsing \
		devel/py-six \
		devel/py-tz \
		devel/py-xlsxwriter \
		net/py-dpkt \
		net/py-zmq \
		security/libbde \
		security/libewf \
		security/py-artifacts \
		security/py-crypto \
		security/py-dfdatetime \
		security/py-dfvfs \
		security/py-dfwinreg \
		security/py-pefile \
		security/yara/python \
		sysutils/py-psutil \
		sysutils/py-tsk \
		textproc/py-yaml \
		www/py-requests

TEST_DEPENDS +=	devel/py-test \
		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py


.include <bsd.port.mk>
