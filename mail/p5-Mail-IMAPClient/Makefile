# $OpenBSD: Makefile,v 1.14 2004/06/26 07:35:07 xsa Exp $

COMMENT=	"perl module for an IMAP Client API"

VERSION=	2.2.9
DISTNAME=	Mail-IMAPClient-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

RUN_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
