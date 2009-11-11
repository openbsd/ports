# $OpenBSD: Makefile,v 1.36 2009/11/11 11:09:56 stephan Exp $

SHARED_ONLY =		Yes

COMMENT =		modules to parse and extract information from HTML
 
MODULES =		cpan
DISTNAME =		HTML-Parser-3.64
CATEGORIES =		www

RUN_DEPENDS =		:p5-HTML-Tagset->=3:www/p5-HTML-Tagset
BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	::www/p5-URI \
			::www/p5-libwww

MAINTAINER =		Srebrenko Sehic <haver@insecure.dk>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
