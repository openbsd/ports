# $OpenBSD: Makefile,v 1.7 2012/01/24 02:18:20 okan Exp $

COMMENT=	swiss army knife SMTP transaction tester

DISTNAME=	swaks-20111230.0
CATEGORIES=	mail

HOMEPAGE=	http://jetmore.org/john/code/swaks/
MASTER_SITES=	http://jetmore.org/john/code/swaks/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-Net-DNS \
		security/p5-Net_SSLeay

NO_REGRESS=	YES

do-build:
	cd ${WRKSRC} && pod2man swaks swaks.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/swaks ${PREFIX}/bin/swaks
	${INSTALL_MAN} ${WRKSRC}/swaks.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
