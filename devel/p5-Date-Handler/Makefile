# $OpenBSD: Makefile,v 1.9 2002/05/13 18:50:41 espie Exp $

COMMENT=	"perl module for calculates time differences"

VERSION=	0.19
DISTNAME=	Date-Handler-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.524
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Date/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
REGRESS_TARGET=	test

.include <bsd.port.mk>
