# $OpenBSD: Makefile,v 1.23 2015/07/28 10:07:59 nigel Exp $

COMMENT =	web and CGI vulnerability scanner with SSL support

DISTNAME =	nikto-2.1.5
EPOCH = 	0
CATEGORIES =	security www

HOMEPAGE =	http://www.cirt.net/nikto2

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.cirt.net/nikto/ \
		http://www.cirt.net/nikto/ARCHIVE/

EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS =	security/p5-Net_SSLeay

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

pre-configure:
	sed -i 's%# EXECDIR=.*%EXECDIR=${PREFIX}/share/nikto%; \
		s%# DOCDIR=.*%DOCDIR=${PREFIX}/share/doc/nikto%; \
		s%# DBDIR=.*%DBDIR=/var/db/nikto/databases%' \
		${WRKSRC}/nikto.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/databases
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nikto
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nikto

	${INSTALL_SCRIPT} ${WRKSRC}/nikto.pl ${PREFIX}/bin/nikto
	${INSTALL_DATA} ${WRKSRC}/nikto.conf \
		${PREFIX}/share/examples/nikto/nikto.conf

	${INSTALL_DATA} ${WRKSRC}/databases/!(*.orig) ${PREFIX}/share/nikto/databases
	${INSTALL_DATA} ${WRKSRC}/plugins/!(*.orig) ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA} ${WRKSRC}/templates/!(*.orig) ${PREFIX}/share/nikto/templates

	${INSTALL_DATA} ${WRKSRC}/docs/nikto_manual.html ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/CHANGES.txt ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/nikto.dtd ${PREFIX}/share/doc/nikto
	${INSTALL_MAN} ${WRKSRC}/docs/nikto.1 ${PREFIX}/man/man1/nikto.1

.include <bsd.port.mk>
