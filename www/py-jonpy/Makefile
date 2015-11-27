# $OpenBSD: Makefile,v 1.15 2015/11/27 08:01:00 benoit Exp $

COMMENT =	Python cgi/fastcgi/mod_python framework

MODPY_EGG_VERSION =	0.12
DISTNAME =		jonpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

MODPY_PI =	Yes

HOMEPAGE =	http://jonpy.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-jonpy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-jonpy
	${INSTALL_DATA} ${WRKBUILD}/doc/* ${PREFIX}/share/doc/py-jonpy
	${TAR} -cf - -C ${WRKBUILD}/example . | \
		${TAR} -C ${PREFIX}/share/examples/py-jonpy -xf -

.include <bsd.port.mk>
