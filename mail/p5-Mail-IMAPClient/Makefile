# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:17 espie Exp $

COMMENT=	"perl module for an IMAP Client API"

DISTNAME=	Mail-IMAPClient-2.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Mail

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::devel/p5-Parse-RecDescent

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
