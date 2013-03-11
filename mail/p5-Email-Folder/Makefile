# $OpenBSD: Makefile,v 1.7 2013/03/11 11:23:52 espie Exp $

COMMENT= 	read an email folder as Email::Simple objects

MODULES=	cpan
USE_GROFF =	Yes

HOMEPAGE=	http://emailproject.perl.org/wiki/Email::Folder

DISTNAME=	Email-Folder-0.855
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-FolderType>=0.6 \
		mail/p5-Email-Simple

MAKE_ENV=	RELEASE_TESTING=Yes

.include <bsd.port.mk>
