# $OpenBSD: Makefile,v 1.4 2010/10/18 19:59:20 espie Exp $

COMMENT=	swiss army knife SMTP transaction tester

DISTNAME=	swaks.20061116.0
PKGNAME=	${DISTNAME:C/\./-/}
CATEGORIES=	mail
EXTRACT_SUFX=
EXTRACT_ONLY=

HOMEPAGE=	http://jetmore.org/john/code/\#swaks
MASTER_SITES=	http://jetmore.org/john/code/

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
	cp ${DISTDIR}/${DISTNAME} ${WRKSRC}/swaks
	cd ${WRKSRC} && pod2man swaks swaks.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/swaks ${PREFIX}/bin/swaks
	${INSTALL_MAN} ${WRKSRC}/swaks.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
