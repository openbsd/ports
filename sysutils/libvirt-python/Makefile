# $OpenBSD: Makefile,v 1.32 2019/11/19 22:31:04 kili Exp $

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.3.5
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-python-/-/}
REVISION =		2

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://libvirt.org/sources/python/ \
			ftp://libvirt.org/libvirt/python/

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt>=${MODPY_EGG_VERSION}

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	sed -i 's,/usr/bin/nosetests,${LOCALBASE}/bin/nosetests,' \
		${WRKSRC}/setup.py
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
