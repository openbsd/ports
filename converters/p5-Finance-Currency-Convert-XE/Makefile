# $OpenBSD: Makefile,v 1.1.1.1 2006/10/26 22:23:00 jasper Exp $

COMMENT= 		"currency conversion"

DISTNAME=		Finance-Currency-Convert-XE-0.11
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		converters perl5

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/B/BA/BARBIE/}

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::www/p5-HTML-Parser \
			::www/p5-WWW-Mechanize

PKG_ARCH=		*

.include <bsd.port.mk>
