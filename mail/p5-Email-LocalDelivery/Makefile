# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:24 sthen Exp $

COMMENT= 	deliver a piece of mail locally

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Email-LocalDelivery-1.200
CATEGORIES=	mail
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType \
		mail/p5-Email-Simple \
		devel/p5-File-Path-Expand \
		sysutils/p5-Capture-Tiny

TEST_DEPENDS=	devel/p5-Module-Pluggable

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
