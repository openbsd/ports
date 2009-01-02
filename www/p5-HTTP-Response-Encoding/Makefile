# $OpenBSD: Makefile,v 1.1.1.1 2009/01/02 18:53:23 bluhm Exp $

COMMENT =		add encoding to HTTP::Response

DISTNAME =		HTTP-Response-Encoding-0.05

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
