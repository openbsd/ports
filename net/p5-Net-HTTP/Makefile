# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:21:09 nigel Exp $

COMMENT =	Perl HTTP connection client

DISTNAME =	Net-HTTP-6.07
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

# security/p5-Crypt-SSLeay cannot verify hostnames.
# IO-Socket-SSL should be used in most cases.
RUN_DEPENDS=	security/p5-IO-Socket-SSL \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

.ifdef LIVE_TEST
CONFIGURE_ARGS +=--live-tests
.endif

.include <bsd.port.mk>
