# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:33 sthen Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-FTPSSL-0.30
CATEGORIES =	net 
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
