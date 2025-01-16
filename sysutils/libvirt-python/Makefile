COMMENT =		libvirt virtualization API python bindings

MODPY_DISTV =		11.0.0
DISTNAME =		libvirt-python-${MODPY_DISTV}
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

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml \
			${BASE_PKGPATH}=${MODPY_DISTV}

.include <bsd.port.mk>
