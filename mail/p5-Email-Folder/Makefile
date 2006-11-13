# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:11:37 espie Exp $

COMMENT= 	"read an email folder as Email::Simple objects"

MODULES=	cpan

HOMEPAGE=	http://pep.kwiki.org/

DISTNAME=	Email-Folder-0.852
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-FolderType

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
