# $OpenBSD: Makefile,v 1.3 2001/02/16 08:56:16 reinhard Exp $

DISTNAME=	ntl-5.0c
CATEGORIES=	math
NEED_VERSION=	1.355
MASTER_SITES=	http://www.shoup.net/ntl/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

HOMEPAGE=	http://www.shoup.net/ntl/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

WRKDIST=	${WRKDIR}/${DISTNAME}/src
MAKE_FILE=	makefile

CONFIGURE_STYLE= simple

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKDIST}/../include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKDIST}; ${INSTALL_DATA} ntl.a ${PREFIX}/lib/libntl.a
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKDIST}/../doc; ${INSTALL_DATA} *.txt ${PREFIX}/share/doc/NTL
	@cd ${WRKDIST}/../doc; ${INSTALL_DATA} *.html ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
