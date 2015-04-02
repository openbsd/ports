# $OpenBSD: Makefile,v 1.13 2015/04/02 14:21:18 jasper Exp $

COMMENT=	Python cgi/fastcgi/mod_python framework

DISTNAME =	jonpy-0.11
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	www

MODPY_PI =	Yes
MODPY_PI_DIR =	j/jonpy

HOMEPAGE=	http://jonpy.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-jonpy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-jonpy
	${INSTALL_DATA} ${WRKBUILD}/doc/* ${PREFIX}/share/doc/py-jonpy
	${TAR} -cf - -C ${WRKBUILD}/example . | \
		${TAR} -C ${PREFIX}/share/examples/py-jonpy -xf -

.include <bsd.port.mk>
