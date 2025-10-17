COMMENT =		libvirt virtualization API python bindings

MODPY_DISTV =		11.8.0
DISTNAME =		libvirt_python-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_python-/-/}

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += virt virt-lxc virt-qemu

SITES =			https://download.libvirt.org/python/

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		sysutils/libvirt

TEST_DEPENDS =		textproc/py-lxml

.include <bsd.port.mk>
