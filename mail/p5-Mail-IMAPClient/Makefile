# $OpenBSD: Makefile,v 1.7 2002/06/07 21:37:11 wilfried Exp $

COMMENT=	"perl module for an IMAP Client API"

DISTNAME=	Mail-IMAPClient-2.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=	::devel/p5-Parse-RecDescent

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
