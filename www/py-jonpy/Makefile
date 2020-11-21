# $OpenBSD: Makefile,v 1.18 2020/11/21 21:37:16 benoit Exp $

COMMENT =	Python cgi/fastcgi/mod_python framework

MODPY_EGG_VERSION =	0.14
DISTNAME =		jonpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		https://github.com/jribbens/jonpy

# Python License
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-jonpy
	${TAR} -cf - -C ${WRKBUILD}/example . | \
		${TAR} -C ${PREFIX}/share/examples/py-jonpy -xf -

.include <bsd.port.mk>
