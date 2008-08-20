# $OpenBSD: Makefile,v 1.3 2008/08/20 20:36:28 simon Exp $

COMMENT= 	deliver a piece of mail locally

MODULES=	cpan

DISTNAME=	Email-LocalDelivery-0.217
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-FolderType \
		::mail/p5-Email-Simple \
		::devel/p5-File-Path-Expand

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
