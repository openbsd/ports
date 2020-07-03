# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:24 sthen Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Email-Folder-0.860
REVISION=	1
CATEGORIES=	mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType>=0.6 \
		mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
