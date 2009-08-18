# $OpenBSD: Makefile,v 1.2 2009/08/18 23:43:53 bluhm Exp $

COMMENT =		add encoding to HTTP::Response

DISTNAME =		HTTP-Response-Encoding-0.06

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::www/p5-libwww
REGRESS_DEPENDS =	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage \
			::www/p5-URI

.include <bsd.port.mk>
