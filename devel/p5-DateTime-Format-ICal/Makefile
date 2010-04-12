# $OpenBSD: Makefile,v 1.1.1.1 2010/04/12 17:26:26 giovanni Exp $

COMMENT =	parse and format iCal datetime and duration strings

DISTNAME =	DateTime-Format-ICal-0.09

CATEGORIES =	devel

MODULES =	cpan

# GPLv1 / Artistic
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::devel/p5-DateTime \
		::devel/p5-DateTime-Set \
		::devel/p5-DateTime-TimeZone \
		::devel/p5-DateTime-Event-ICal \
		::devel/p5-Params-Validate

CONFIGURE_ARGS =install_base=${PREFIX}

.include <bsd.port.mk>
