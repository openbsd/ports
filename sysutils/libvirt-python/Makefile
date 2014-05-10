# $OpenBSD: Makefile,v 1.1.1.1 2014/05/10 07:48:53 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils

HOMEPAGE =		http://libvirt.org/python.html

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=l/libvirt-python/}

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt

.include <bsd.port.mk>
