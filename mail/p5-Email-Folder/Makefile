# $OpenBSD: Makefile,v 1.11 2016/04/04 10:20:40 sthen Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Email-Folder-0.860
REVISION=	0
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType>=0.6 \
		mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
