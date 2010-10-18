# $OpenBSD: Makefile,v 1.20 2010/10/18 19:59:17 espie Exp $

COMMENT=	perl module for an IMAP Client API

VERSION=	2.2.9
DISTNAME=	Mail-IMAPClient-${VERSION}
REVISION=	1
CATEGORIES=	mail

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
