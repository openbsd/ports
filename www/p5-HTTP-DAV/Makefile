# $OpenBSD: Makefile,v 1.6 2020/07/03 21:46:02 sthen Exp $

COMMENT =	webdav client library for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTTP-DAV-0.49
CATEGORIES =	www
REVISION =	0

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	textproc/p5-XML-DOM
MAKE_ENV =	PERLDAV_TEST=1

.include <bsd.port.mk>
