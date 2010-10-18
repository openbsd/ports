# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:51 espie Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
DISTNAME =	Danga-Socket-1.61
USE_GROFF =	Yes

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
