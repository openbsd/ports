# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"Catalyst authentication framework"

DISTNAME=	Catalyst-Plugin-Authentication-0.09
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Class-Inspector \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize-Catalyst \
		::security/p5-Digest-SHA1 \
		::www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
