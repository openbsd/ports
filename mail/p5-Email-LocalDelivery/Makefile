# $OpenBSD: Makefile,v 1.9 2015/04/05 20:12:43 rpe Exp $

COMMENT= 	deliver a piece of mail locally

MODULES=	cpan

DISTNAME=	Email-LocalDelivery-1.200
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType \
		mail/p5-Email-Simple \
		devel/p5-File-Path-Expand \
		sysutils/p5-Capture-Tiny

TEST_DEPENDS=	devel/p5-Module-Pluggable

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
