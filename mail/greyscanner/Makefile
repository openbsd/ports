# $OpenBSD: Makefile,v 1.9 2013/12/05 00:27:50 jim Exp $

COMMENT =	greytrapping daemon to complement OpenBSD spamd

DISTNAME =	greyscanner-1.02
CATEGORIES =	mail
HOMEPAGE =	https://bitbucket.org/bonetruck/greyscanner/

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://bitbucket.org/bonetruck/greyscanner/downloads/

RUN_DEPENDS =	mail/p5-Email-Valid \
		net/p5-Net-DNS

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/greyscanner ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/greyscanner
	${INSTALL_DATA} ${WRKSRC}/greyscanner.conf ${PREFIX}/share/examples/greyscanner
	${INSTALL_MAN} ${WRKSRC}/greyscanner.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
