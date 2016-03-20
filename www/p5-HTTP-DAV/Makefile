# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:19 naddy Exp $

COMMENT =	webdav client library for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTTP-DAV-0.48
CATEGORIES =	www

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	textproc/p5-XML-DOM
MAKE_ENV =	PERLDAV_TEST=1

.include <bsd.port.mk>
