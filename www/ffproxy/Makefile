# $OpenBSD: Makefile,v 1.8 2005/11/11 09:26:44 alek Exp $

COMMENT=	"filtering HTTP proxy server"
DISTNAME=	ffproxy-1.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	http://faith.eu.org/ffproxy/

HOMEPAGE=	http://faith.eu.org/programs.html\#ffproxy

MAINTAINER=	Johan Fredin <johan@spelaroll.se>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--datadir=/var

NO_REGRESS=		Yes

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
