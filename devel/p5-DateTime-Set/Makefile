# $OpenBSD: Makefile,v 1.1.1.1 2009/05/03 16:10:33 simon Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.27
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

.include <bsd.port.mk>
