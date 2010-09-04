# $OpenBSD: Makefile,v 1.2 2010/09/04 18:10:48 sthen Exp $

COMMENT =	parse and format iCal datetime and duration strings

DISTNAME =	DateTime-Format-ICal-0.09
REVISION =	0

CATEGORIES =	devel

MODULES =	cpan

# GPLv1 / Artistic
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	::devel/p5-DateTime \
		::devel/p5-DateTime-Set \
		::devel/p5-DateTime-TimeZone \
		::devel/p5-DateTime-Event-ICal \
		::devel/p5-Params-Validate

.include <bsd.port.mk>
