# $OpenBSD: Makefile,v 1.9 2004/12/05 18:22:57 robert Exp $

COMMENT=	"update your Snort 1.8+ rules"

DISTNAME=	oinkmaster-1.1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oinkmaster/}

HOMEPAGE=       http://oinkmaster.sourceforge.net/

# License: BSD
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

RUN_DEPENDS=		::net/wget

NO_BUILD=Yes
NO_REGRESS=Yes
PKG_ARCH=*

do-install:
	sed -e 's;"/usr/local/etc/oinkmaster.conf";"${SYSCONFDIR}/oinkmaster.conf";g' \
	    ${WRKSRC}/oinkmaster.pl > ${WRKSRC}/oinkmaster-
	${INSTALL_SCRIPT} ${WRKSRC}/oinkmaster- ${PREFIX}/bin/oinkmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oinkmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oinkmaster
	${INSTALL_DATA}	${WRKSRC}/oinkmaster.conf \
			${WRKSRC}/template-examples.conf \
			${PREFIX}/share/examples/oinkmaster
	${INSTALL_DATA} ${WRKSRC}/README.templates ${PREFIX}/share/doc/oinkmaster

.include <bsd.port.mk>
