# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:48 espie Exp $

COMMENT=	Python cgi/fastcgi/mod_python framework

DISTNAME=	jonpy-0.10
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jonpy/}

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
