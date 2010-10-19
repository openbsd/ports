# $OpenBSD: Makefile,v 1.2 2010/10/19 08:13:58 espie Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.06
CATEGORIES =		x11 devel

MODULES =		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::devel/p5-AnyEvent \
			::converters/p5-JSON-XS

.include <bsd.port.mk>
