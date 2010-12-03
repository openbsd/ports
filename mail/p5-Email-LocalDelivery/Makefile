# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT= 	deliver a piece of mail locally

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-LocalDelivery-0.217
REVISION=	0
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType \
		mail/p5-Email-Simple \
		devel/p5-File-Path-Expand

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
