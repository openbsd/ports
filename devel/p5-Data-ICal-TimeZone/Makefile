# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:18 naddy Exp $

COMMENT =	timezones module for Data::ICal

DISTNAME =	Data-ICal-TimeZone-1.23
REVISION =	0

CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Data-ICal \
		devel/p5-Class-Accessor \
		devel/p5-Class-Singleton \
		devel/p5-Class-ReturnValue \
		devel/p5-Universal-require

post-extract:
	rm ${WRKDIST}/lib/Data/ICal/._*  \
		${WRKDIST}/lib/Data/ICal/TimeZone/._*

.include <bsd.port.mk>
