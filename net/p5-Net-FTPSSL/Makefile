# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:52 naddy Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-FTPSSL-0.30
CATEGORIES =	net 

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
