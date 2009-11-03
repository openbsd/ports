# $OpenBSD: Makefile,v 1.8 2009/11/03 13:27:43 stephan Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-1.96
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		www

MAINTAINER=		Stephan A. Rickauer <stephan@openbsd.org>

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/p5-Text-Autoformat \
			::www/p5-libwww \
			::www/p5-URI
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
