# $OpenBSD: Makefile,v 1.6 2002/05/13 23:31:25 espie Exp $

COMMENT=	"perl module for an IMAP Client API"

DISTNAME=	Mail-IMAPClient-2.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::devel/p5-Parse-RecDescent

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
