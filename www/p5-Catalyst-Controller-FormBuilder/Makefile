# $OpenBSD: Makefile,v 1.2 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"Catalyst FormBuilder Base Controller"

MODULES=	cpan
DISTNAME=	Catalyst-Controller-FormBuilder-0.03
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::devel/p5-Tie-IxHash \
		::www/p5-CGI-FormBuilder \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
