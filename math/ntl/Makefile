# $OpenBSD: Makefile,v 1.6 2001/06/15 08:59:48 reinhard Exp $

COMMENT=	"Victor Shoup's Number Theory Library"

DISTNAME=	ntl-5.1a
CATEGORIES=	math
NEED_VERSION=	1.402
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
CONFIGURE_ARGS= CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKDIST}/../include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKDIST}; ${INSTALL_DATA} ntl.a ${PREFIX}/lib/libntl.a
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKDIST}/../doc; ${INSTALL_DATA} *.txt ${PREFIX}/share/doc/NTL
	@cd ${WRKDIST}/../doc; ${INSTALL_DATA} *.html ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
