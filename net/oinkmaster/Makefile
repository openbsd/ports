# $OpenBSD: Makefile,v 1.1.1.1 2003/02/03 19:18:14 lebel Exp $

COMMENT=	"update your Snort 1.8+ rules"

DISTNAME=	oinkmaster-0.6
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}/dl/contrib/rule_management/oinkmaster/

HOMEPAGE=       http://nitzer.dhs.org/oinkmaster/

MAINTAINER=	David Lebel <lebel@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

RUN_DEPENDS=		::net/wget

NO_BUILD=Yes

do-install:
	sed -e 's;"./oinkmaster.conf";"${SYSCONFDIR}/oinkmaster.conf";g' \
	    ${WRKSRC}/oinkmaster.pl > ${WRKSRC}/oinkmaster-
	${INSTALL_SCRIPT} ${WRKSRC}/oinkmaster- ${PREFIX}/bin/oinkmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oinkmaster
	${INSTALL_DATA}	${WRKSRC}/oinkmaster.conf \
		        ${PREFIX}/share/examples/oinkmaster

.include <bsd.port.mk>
