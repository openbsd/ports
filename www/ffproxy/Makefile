# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:41 espie Exp $

COMMENT=	filtering HTTP proxy server
DISTNAME=	ffproxy-1.6
REVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://faith.eu.org/ffproxy/

HOMEPAGE=	http://faith.eu.org/programs.html\#ffproxy

MAINTAINER=	Johan Fredin <johan@spelaroll.se>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--datadir=/var

NO_TEST=		Yes

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
