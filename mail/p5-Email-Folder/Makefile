# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:45 naddy Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
PKG_ARCH=	*

HOMEPAGE=	http://emailproject.perl.org/wiki/Email::Folder

DISTNAME =	Email-Folder-0.860
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType>=0.6 \
		mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
