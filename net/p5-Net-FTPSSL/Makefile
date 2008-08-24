# $OpenBSD: Makefile,v 1.1.1.1 2008/08/24 16:13:54 simon Exp $

COMMENT =	FTP over SSL/TLS client class

MODULES =	cpan
DISTNAME =	Net-FTPSSL-0.04
CATEGORIES =	net 

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::security/p5-IO-Socket-SSL

REGRESS_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
