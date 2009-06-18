# $OpenBSD: Makefile,v 1.2 2009/06/18 18:08:20 simon Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
DISTNAME =	YAML-Tiny-1.39
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	::devel/p5-YAML \
			::devel/p5-YAML-Syck \
			::devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
