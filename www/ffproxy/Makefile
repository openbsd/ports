# $OpenBSD: Makefile,v 1.6 2004/12/11 13:29:21 alek Exp $

COMMENT=	"filtering HTTP proxy server"
DISTNAME=	ffproxy-1.5.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	http://faith.eu.org/ffproxy/

HOMEPAGE=	http://faith.eu.org/programs.html\#ffproxy

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c 

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffproxy/{db,html}
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/ffproxy
	${INSTALL_DATA} ${WRKBUILD}/sample.config \
		${PREFIX}/share/examples/ffproxy/ffproxy.conf
	${INSTALL_DATA} ${WRKBUILD}/db/* ${PREFIX}/share/examples/ffproxy/db/
	${INSTALL_DATA} ${WRKBUILD}/html/* \
		${PREFIX}/share/examples/ffproxy/html/

.include <bsd.port.mk>
