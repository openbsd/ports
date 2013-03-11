# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:52 espie Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
DISTNAME =	Net-FTPSSL-0.17
CATEGORIES =	net 
USE_GROFF =	Yes

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
