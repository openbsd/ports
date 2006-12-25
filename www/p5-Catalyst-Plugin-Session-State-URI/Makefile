# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"catalyst session IDs as URI extensions"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-URI-0.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-MIME-Types \
		::www/p5-HTML-TokeParser-Simple \
		::www/p5-URI \
		::www/p5-Catalyst-Plugin-Session \
		::www/p5-URI-Find
REGRESS_DEPENDS=::devel/p5-Test-MockObject \
		::www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
