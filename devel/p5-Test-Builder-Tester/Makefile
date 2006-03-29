# $OpenBSD: Makefile,v 1.3 2006/03/29 21:23:58 msf Exp $

COMES_WITH=	3.9

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module to lint Test::Builder testsuites"

DISTNAME=	Test-Builder-Tester-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
