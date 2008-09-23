# $OpenBSD: Makefile,v 1.11 2008/09/23 21:21:01 rui Exp $

COMMENT=	Web and CGI vulnerability scanner with SSL support

DISTNAME=	nikto-2.03
CATEGORIES=	security www

HOMEPAGE=	http://www.cirt.net/code/nikto.shtml

MAINTAINER=	Rui Reis <rui@openbsd.org>

MASTER_SITES=	http://www.cirt.net/nikto/ \
		http://www.cirt.net/nikto/ARCHIVE/
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Net-SSLeay-*:security/p5-Net_SSLeay

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/nikto

pre-configure:
	perl -pi -e 's,# EXECDIR=.+,EXECDIR=${PREFIX}/share/nikto,' \
		${WRKSRC}/config.txt
	perl -pi -e 's,config.txt,${SYSCONFDIR}/nikto.conf,' ${WRKSRC}/nikto.pl
	perl -pi -e 's,docs/CHANGES\.txt,doc/nikto/CHANGES.txt,g' \
		${WRKSRC}/plugins/nikto_core.plugin

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nikto
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nikto

	${INSTALL_SCRIPT} ${WRKSRC}/nikto.pl ${PREFIX}/bin/nikto
	${INSTALL_DATA} ${WRKSRC}/config.txt \
		${PREFIX}/share/examples/nikto/nikto.conf

	${INSTALL_DATA} ${WRKSRC}/plugins/* ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/nikto/templates

	${INSTALL_DATA} ${WRKSRC}/docs/nikto_manual.html ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/CHANGES.txt ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/nikto.dtd ${PREFIX}/share/doc/nikto
	${INSTALL_MAN} ${WRKSRC}/docs/nikto.1 ${PREFIX}/man/man1/nikto.1

.include <bsd.port.mk>
