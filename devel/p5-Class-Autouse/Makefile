# $OpenBSD: Makefile,v 1.4 2005/11/22 09:04:13 kevlo Exp $

COMMENT=	"run-time class loading on first method call"

DISTNAME=	Class-Autouse-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl 

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-prefork

.include <bsd.port.mk>
