# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:31 sthen Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Email-Folder-0.860
REVISION=	0
CATEGORIES=	mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType>=0.6 \
		mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
