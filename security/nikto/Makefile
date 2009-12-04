# $OpenBSD: Makefile,v 1.12 2009/12/04 16:25:16 benoit Exp $

COMMENT =	Web and CGI vulnerability scanner with SSL support

DISTNAME =	nikto-2.1.0
CATEGORIES =	security www

HOMEPAGE =	http://www.cirt.net/code/nikto.shtml

MAINTAINER =	Rui Reis <rui@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.cirt.net/nikto/ \
		http://www.cirt.net/nikto/ARCHIVE/

EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS =	:p5-Net-SSLeay-*:security/p5-Net_SSLeay

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

pre-configure:
	perl -pi -e 's,# EXECDIR=.+,EXECDIR=${PREFIX}/share/nikto,' \
		${WRKSRC}/nikto.conf
	perl -pi -e 's,# DOCDIR=.+,DOCDIR=${PREFIX}/share/doc/nikto,' \
		${WRKSRC}/nikto.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nikto
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nikto

	${INSTALL_SCRIPT} ${WRKSRC}/nikto.pl ${PREFIX}/bin/nikto
	${INSTALL_DATA} ${WRKSRC}/nikto.conf \
		${PREFIX}/share/examples/nikto/nikto.conf

	${INSTALL_DATA} ${WRKSRC}/plugins/* ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA} ${WRKSRC}/templates/* ${PREFIX}/share/nikto/templates

	${INSTALL_DATA} ${WRKSRC}/docs/nikto_manual.html ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/CHANGES.txt ${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/docs/nikto.dtd ${PREFIX}/share/doc/nikto
	${INSTALL_MAN} ${WRKSRC}/docs/nikto.1 ${PREFIX}/man/man1/nikto.1

.include <bsd.port.mk>
