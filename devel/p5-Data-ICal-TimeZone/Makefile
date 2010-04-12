# $OpenBSD: Makefile,v 1.1.1.1 2010/04/12 16:55:45 giovanni Exp $

COMMENT =	timezones module for Data::ICal

DISTNAME =	Data-ICal-TimeZone-1.23

CATEGORIES =	devel

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/p5-Data-ICal \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-Singleton \
		::devel/p5-Class-ReturnValue \
		::devel/p5-Universal-require

post-extract:
	@rm -f ${WRKDIST}/lib/Data/ICal/._*  \
		${WRKDIST}/lib/Data/ICal/TimeZone/._*

.include <bsd.port.mk>
