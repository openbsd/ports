# $OpenBSD: Makefile,v 1.1.1.1 2013/05/20 09:09:29 giovanni Exp $

COMMENT =	webdav client library for Perl

MODULES =	cpan
DISTNAME =	HTTP-DAV-0.47
CATEGORIES =	www

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	textproc/p5-XML-DOM
MAKE_ENV =	PERLDAV_TEST=1

.include <bsd.port.mk>
