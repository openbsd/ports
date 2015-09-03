# $OpenBSD: Makefile,v 1.19 2015/09/03 07:44:48 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.2.19
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://libvirt.org/sources/python/ \
			ftp://libvirt.org/libvirt/python/

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt>=${MODPY_EGG_VERSION}

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	perl -pi -e 's,/usr/bin/nosetests,${LOCALBASE}/bin/nosetests,' \
		${WRKSRC}/setup.py
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
