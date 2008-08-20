# $OpenBSD: Makefile,v 1.7 2008/08/20 20:09:59 dhill Exp $

COMMENT=		low-calorie MIME generator

DISTNAME=		MIME-Lite-3.021
CATEGORIES=		mail

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::mail/p5-Email-Date-Format \
			::mail/p5-MIME-Types \
			::mail/p5-Mail-Tools 

MODULES=		cpan
MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>	
