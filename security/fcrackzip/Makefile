# $OpenBSD: Makefile,v 1.2 2010/10/18 21:41:45 espie Exp $

COMMENT =	ZIP password cracker

DISTNAME =	fcrackzip-1.0
CATEGORIES =	security archivers

HOMEPAGE =	http://home.schmorp.de/marc/fcrackzip.html 

MAINTAINER =	Jung Lee <moorang@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	yes
PERMIT_PACKAGE_FTP =	yes
PERMIT_DISTFILES_CDROM =yes
PERMIT_DISTFILES_FTP =	yes

WANTLIB +=	c

MASTER_SITES =	http://home.schmorp.de/data/marc/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
USE_GROFF =	Yes

# for the --use-unzip option
RUN_DEPENDS =	::archivers/unzip

do-install:
	${INSTALL_MAN} ${WRKSRC}/fcrackzip.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/fcrackzip ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/zipinfo ${PREFIX}/bin/fcrackzipinfo

.include <bsd.port.mk>
