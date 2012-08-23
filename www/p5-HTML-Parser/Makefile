# $OpenBSD: Makefile,v 1.44 2012/08/23 16:02:37 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		modules to parse and extract information from HTML
 
MODULES =		cpan
DISTNAME =		HTML-Parser-3.68
REVISION =		0
CATEGORIES =		www

RUN_DEPENDS =		www/p5-HTML-Tagset>=3
BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	www/p5-URI \
			www/p5-libwww

MAINTAINER =		Srebrenko Sehic <haver@insecure.dk>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
