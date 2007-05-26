# $OpenBSD: Makefile,v 1.3 2007/05/26 14:34:20 pyr Exp $

COMMENT=	"Python cgi/fastcgi/mod_python framework"

DISTNAME=	jonpy-0.06
PKGNAME=	py-${DISTNAME}p1
CATEGORIES=    	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jonpy/}

HOMEPAGE=	http://jonpy.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-jonpy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-jonpy
	${INSTALL_DATA} ${WRKBUILD}/doc/* ${PREFIX}/share/doc/py-jonpy
	${TAR} -cf - -C ${WRKBUILD}/example . | \
		${TAR} -C ${PREFIX}/share/examples/py-jonpy -xf -

.include <bsd.port.mk>
