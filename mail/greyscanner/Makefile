# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:28 sthen Exp $

COMMENT =	greytrapping daemon to complement OpenBSD spamd

DISTNAME =	greyscanner-2.01
CATEGORIES =	mail
HOMEPAGE =	https://bitbucket.org/jimrazmus/greyscanner/
REVISION =	0

# BSD
PERMIT_PACKAGE =	Yes

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
