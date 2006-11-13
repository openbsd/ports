# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:11:49 espie Exp $

COMMENT= 	"deliver a piece of mail locally"

MODULES=	cpan

HOMEPAGE=	http://pep.kwiki.org/

DISTNAME=	Email-LocalDelivery-0.21
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-FolderType \
		::mail/p5-Email-Simple \
		::devel/p5-File-Path-Expand

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
