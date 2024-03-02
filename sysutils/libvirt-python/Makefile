COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	10.1.0
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-python-/-/}

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += virt virt-lxc virt-qemu

SITES =			https://libvirt.org/sources/python/

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		sysutils/libvirt

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
