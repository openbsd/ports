# $OpenBSD: Makefile,v 1.1.1.1 2010/07/26 13:46:52 dcoppa Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.06
CATEGORIES =		x11 devel

MODULES =		cpan

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::devel/p5-AnyEvent \
			::converters/p5-JSON-XS

.include <bsd.port.mk>
