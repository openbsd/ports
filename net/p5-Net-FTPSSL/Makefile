# $OpenBSD: Makefile,v 1.12 2017/12/08 12:14:03 espie Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-FTPSSL-0.30
CATEGORIES =	net 
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	security/p5-IO-Socket-SSL

# required access to a secure ftp server
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
