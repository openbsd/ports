# $OpenBSD: Makefile,v 1.7 2013/08/07 21:57:57 naddy Exp $

COMMENT =	greytrapping daemon to compliment OpenBSD spamd

DISTNAME =	greyscanner-1.01
REVISION =	1
CATEGORIES =	mail
HOMEPAGE =	https://bitbucket.org/bonetruck/greyscanner/

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

#MASTER_SITES =	https://bitbucket.org/bonetruck/greyscanner/get/
MASTER_SITES =	http://spacehopper.org/mirrors/

RUN_DEPENDS =	mail/p5-Email-Valid \
		net/p5-Net-DNS

WRKDIST =	${WRKDIR}/greyscanner

NO_BUILD =	Yes
NO_TEST =	Yes
USE_GROFF =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/greyscanner ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/greyscanner
	${INSTALL_DATA} ${WRKSRC}/greyscanner.conf ${PREFIX}/share/examples/greyscanner
	${INSTALL_MAN} ${WRKSRC}/greyscanner.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
