# $OpenBSD: Makefile,v 1.5 2014/09/03 19:29:19 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.2.8
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils

HOMEPAGE =		http://libvirt.org/python.html

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=l/libvirt-python/}

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt>=1.2.5

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml

do-test:
	perl -pi -e 's,/usr/bin/nosetests,${LOCALBASE}/bin/nosetests,' \
		${WRKSRC}/setup.py
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
