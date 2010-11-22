# $OpenBSD: Makefile,v 1.3 2010/11/22 08:37:03 espie Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.06
CATEGORIES =		x11 devel

MODULES =		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
