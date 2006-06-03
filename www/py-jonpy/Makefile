# $OpenBSD: Makefile,v 1.2 2006/06/03 09:48:04 alek Exp $

COMMENT=	"Python cgi/fastcgi/mod_python framework"

DISTNAME=	jonpy-0.06
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=    	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jonpy/}

HOMEPAGE=	http://jonpy.sourceforge.net/

MAINTAINER=	Pierre-Yves Ritschard <pierre-yves.ritschard@oxalide.com>

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
