# $OpenBSD: Makefile,v 1.10 2015/09/11 12:15:21 pea Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
DISTNAME =	Net-FTPSSL-0.30
CATEGORIES =	net 

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
