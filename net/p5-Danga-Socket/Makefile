# $OpenBSD: Makefile,v 1.1.1.1 2009/01/20 09:23:21 simon Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
DISTNAME =	Danga-Socket-1.61

CATEGORIES =	net

MAINTAINER =	Toni Mueller <support@oeko.net>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-IO-KQueue \
		::sysutils/p5-Sys-Syscall

.include <bsd.port.mk>
