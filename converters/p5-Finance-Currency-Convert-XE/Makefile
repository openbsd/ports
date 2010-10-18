# $OpenBSD: Makefile,v 1.6 2010/10/18 17:06:06 espie Exp $

COMMENT= 		currency conversion

DISTNAME=		Finance-Currency-Convert-XE-0.16
CATEGORIES=		converters
MODULES=		cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		BARBIE

RUN_DEPENDS=		::www/p5-HTML-Parser \
			::www/p5-WWW-Mechanize

.include <bsd.port.mk>
