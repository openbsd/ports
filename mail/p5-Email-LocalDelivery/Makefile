# $OpenBSD: Makefile,v 1.8 2015/01/21 14:19:13 sthen Exp $

COMMENT= 	deliver a piece of mail locally

MODULES=	cpan

DISTNAME=	Email-LocalDelivery-0.217
REVISION=	0
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType \
		mail/p5-Email-Simple \
		devel/p5-File-Path-Expand

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
