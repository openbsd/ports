# $OpenBSD: Makefile,v 1.1.1.1 2006/12/21 22:02:42 espie Exp $

COMMENT=		"parse, analyze and manipulate Perl"

MODULES=		cpan
DISTNAME=		PPI-HTML-1.07
CATEGORIES=		textproc www
CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::textproc/p5-PPI \
			::www/p5-CSS-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
