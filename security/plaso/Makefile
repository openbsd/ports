# $OpenBSD: Makefile,v 1.9 2018/06/02 12:01:59 jasper Exp $

COMMENT =		engine and tools to automate creation of super timeline

MODPY_EGG_VERSION =	20180524
DISTNAME =		plaso-${MODPY_EGG_VERSION}
REVISION =		0

DISTFILES =		${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}

CATEGORIES =		security

HOMEPAGE =		https://github.com/log2timeline/plaso/wiki

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

DISTNAME =	plaso-${MODPY_EGG_VERSION}

MASTER_SITES =	https://github.com/log2timeline/plaso/releases/download/${MODPY_EGG_VERSION}/

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
		devel/py-certifi \
		textproc/py-chardet \
		devel/py-construct \
		devel/py-dateutil \
		devel/py-efilter \
		devel/py-future \
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
		security/py-cryptodome \
		security/py-dfdatetime \
		security/py-dfvfs \
		security/py-dfwinreg \
		security/py-pefile \
		security/yara/python \
		sysutils/py-psutil \
		sysutils/py-tsk \
		textproc/py-yaml \
		www/py-requests \
		www/py-urllib3 \
		textproc/py-elasticsearch \
		devel/py-dtfabric \
		devel/py-biplist

TEST_DEPENDS +=	devel/py-test \
		${RUN_DEPENDS}

# py-elasticsearch in ports in > 5.5.1, ignore error
post-extract:
	sed -i "s/maximum_version: 5.5.1/#maximum_version: 5.5.1/" ${WRKSRC}/dependencies.ini

pre-test:
	touch ${WRKSRC}/utils/__init__.py
do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
