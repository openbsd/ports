# $OpenBSD: Makefile,v 1.12 2003/04/27 19:41:46 margarida Exp $

COMMENT=	"perl module for an IMAP Client API"

VERSION=	2.2.7
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

BUILD_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
