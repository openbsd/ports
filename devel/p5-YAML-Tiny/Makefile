# $OpenBSD: Makefile,v 1.6 2011/03/11 09:05:45 jasper Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
DISTNAME =	YAML-Tiny-1.48
CATEGORIES =	devel
USE_GROFF =	Yes
CPAN_AUTHOR =	ADAMK

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	devel/p5-YAML \
			devel/p5-YAML-Perl \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
