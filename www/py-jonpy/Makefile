# $OpenBSD: Makefile,v 1.16 2016/11/03 11:45:12 danj Exp $

COMMENT =	Python cgi/fastcgi/mod_python framework

MODPY_EGG_VERSION =	0.13
DISTNAME =		jonpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		https://github.com/jribbens/jonpy

# Python License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-jonpy
	${TAR} -cf - -C ${WRKBUILD}/example . | \
		${TAR} -C ${PREFIX}/share/examples/py-jonpy -xf -

.include <bsd.port.mk>
