# $OpenBSD: Makefile,v 1.2 2015/05/18 17:22:40 giovanni Exp $

COMMENT =	webdav client library for Perl

MODULES =	cpan
DISTNAME =	HTTP-DAV-0.48
CATEGORIES =	www

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	textproc/p5-XML-DOM
MAKE_ENV =	PERLDAV_TEST=1

.include <bsd.port.mk>
