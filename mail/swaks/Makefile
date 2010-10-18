# $OpenBSD: Makefile,v 1.5 2010/10/18 22:08:31 kili Exp $

COMMENT=	swiss army knife SMTP transaction tester

DISTNAME=	swaks-20100211.0
CATEGORIES=	mail

HOMEPAGE=	http://jetmore.org/john/code/swaks/
MASTER_SITES=	http://jetmore.org/john/code/swaks/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/p5-Net-DNS \
		::security/p5-Net_SSLeay

USE_GROFF =	Yes
NO_REGRESS=	YES

do-build:
	cd ${WRKSRC} && pod2man swaks swaks.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/swaks ${PREFIX}/bin/swaks
	${INSTALL_MAN} ${WRKSRC}/swaks.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
