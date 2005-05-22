# $OpenBSD: Makefile,v 1.1.1.1 2005/05/22 14:44:45 robert Exp $

COMMENT=	"OLSR routing daemon"

DISTNAME=	olsrd-0.4.9
CATEGORIES=     net

HOMEPAGE=	http://www.olsr.org/
MASTER_SITES=	http://www.olsr.org/releases/0.4/

MAINTAINER=	Holger Mauermann <holger@mauermann.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m

BUILD_DEPENDS=  :bison-*:devel/bison
USE_GMAKE=	Yes
MAKE_ENV=	"OS=obsd"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/olsrd ${PREFIX}/sbin
	@cd ${WRKSRC}/files  && ${GUNZIP_CMD} olsrd.conf.5.gz olsrd.8.gz
	${INSTALL_MAN} ${WRKSRC}/files/olsrd.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/files/olsrd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/olsrd
	${INSTALL_DATA} ${WRKSRC}/files/olsrd.conf.default.* \
		${PREFIX}/share/examples/olsrd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/olsrd
	@for i in CHANGELOG README README-Link-Quality.html; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${PREFIX}/share/doc/olsrd; \
	done

.include <bsd.port.mk>
