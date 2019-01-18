# $OpenBSD: Makefile,v 1.4 2019/01/18 07:28:44 giovanni Exp $

COMMENT =	webdav client library for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTTP-DAV-0.49
CATEGORIES =	www

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	textproc/p5-XML-DOM
MAKE_ENV =	PERLDAV_TEST=1

.include <bsd.port.mk>
