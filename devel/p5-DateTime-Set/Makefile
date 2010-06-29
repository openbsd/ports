# $OpenBSD: Makefile,v 1.2 2010/06/29 16:44:12 jim Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.28
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		::devel/p5-DateTime \
			::devel/p5-Params-Validate \
			::devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

REGRESS_DEPENDS =	::devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
