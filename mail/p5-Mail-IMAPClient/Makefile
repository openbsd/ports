# $OpenBSD: Makefile,v 1.17 2007/09/16 00:17:06 merdely Exp $

COMMENT=	perl module for an IMAP Client API

VERSION=	2.2.9
DISTNAME=	Mail-IMAPClient-${VERSION}
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
