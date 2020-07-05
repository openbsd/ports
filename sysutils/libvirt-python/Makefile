# $OpenBSD: Makefile,v 1.35 2020/07/05 11:48:15 ajacoutot Exp $

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	6.5.0
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-python-/-/}

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread virt virt-lxc virt-qemu

MASTER_SITES =		https://libvirt.org/sources/python/

MODULES =		lang/python

LIB_DEPENDS =		sysutils/libvirt

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

FLAVORS =		python3
FLAVOR =		python3

do-test:
	${MODPY_TEST_TARGET} ${TEST_TARGET}

.include <bsd.port.mk>
