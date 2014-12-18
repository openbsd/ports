# $OpenBSD: Makefile,v 1.9 2014/12/18 14:40:15 benoit Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
DISTNAME =	Net-FTPSSL-0.25
CATEGORIES =	net 

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
