# $OpenBSD: Makefile,v 1.12 2018/07/15 09:00:05 gonzalo Exp $

COMMENT =	greytrapping daemon to complement OpenBSD spamd

DISTNAME =	greyscanner-2.01
CATEGORIES =	mail
HOMEPAGE =	https://bitbucket.org/jimrazmus/greyscanner/

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://bitbucket.org/jimrazmus/greyscanner/downloads/

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
