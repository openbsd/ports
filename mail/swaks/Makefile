# $OpenBSD: Makefile,v 1.23 2020/09/14 13:38:58 bluhm Exp $

COMMENT=	swiss army knife SMTP transaction tester

DISTNAME=	swaks-20190914.0
REVISION=	0

CATEGORIES=	mail

HOMEPAGE=	https://jetmore.org/john/code/swaks/
MASTER_SITES=	https://jetmore.org/john/code/swaks/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-DNS \
		security/p5-Net-SSLeay \
		security/p5-Authen-SASL \
		security/p5-Authen-NTLM \
		net/p5-IO-Socket-INET6

NO_TEST=	Yes

PKG_ARCH=	*

do-build:
	cd ${WRKSRC} && pod2man swaks swaks.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/swaks ${PREFIX}/bin/swaks
	${INSTALL_MAN} ${WRKSRC}/swaks.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/swak
	${INSTALL_DATA} ${WRKSRC}/doc/{recipes,ref}.txt \
	    ${PREFIX}/share/doc/swak

.include <bsd.port.mk>
