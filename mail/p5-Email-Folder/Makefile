# $OpenBSD: Makefile,v 1.5 2010/10/18 19:59:17 espie Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
USE_GROFF =	Yes

HOMEPAGE=	http://emailproject.perl.org/wiki/Email::Folder

DISTNAME=	Email-Folder-0.855
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Email-FolderType->=0.6:mail/p5-Email-FolderType \
		::mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
