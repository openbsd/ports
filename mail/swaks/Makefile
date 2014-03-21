# $OpenBSD: Makefile,v 1.11 2014/03/21 10:07:41 sthen Exp $

COMMENT=	swiss army knife SMTP transaction tester

DISTNAME=	swaks-20130209.0
REVISION =	0
CATEGORIES=	mail

HOMEPAGE=	http://jetmore.org/john/code/swaks/
MASTER_SITES=	http://jetmore.org/john/code/swaks/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-DNS \
		security/p5-Net_SSLeay \
		security/p5-Authen-SASL \
		security/p5-Authen-NTLM \
		net/p5-IO-Socket-INET6

NO_TEST=	YES

do-build:
	cd ${WRKSRC} && pod2man swaks swaks.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/swaks ${PREFIX}/bin/swaks
	${INSTALL_MAN} ${WRKSRC}/swaks.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
