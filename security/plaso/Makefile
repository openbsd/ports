# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:09 sthen Exp $

COMMENT =		engine and tools to automate creation of super timeline

MODPY_EGG_VERSION =	20180818
DISTNAME =		plaso-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/log2timeline/plaso/wiki

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

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
		devel/py-dtfabric \
		devel/py-biplist

TEST_DEPENDS +=	devel/py-test

# py-elasticsearch in ports is > 5.5.1
# mark elasticsearch as not required, so we can use plaso
post-extract:
	sed -i "s/'5.5.1', True)/'5.5.1', False)/" ${WRKSRC}/plaso/dependencies.py
	sed -i "/maximum_version: 5.5.1/d" ${WRKSRC}/dependencies.ini
	sed -i "/elasticsearch5/d" ${WRKSRC}/plaso/dependencies.py
	sed -i "/^\[elasticsearch5/,/^$$/d"  ${WRKSRC}/dependencies.ini

pre-test:
	touch ${WRKSRC}/utils/__init__.py
do-test:
	cd ${WRKSRC} && LC_CTYPE='en_US.UTF-8' ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
