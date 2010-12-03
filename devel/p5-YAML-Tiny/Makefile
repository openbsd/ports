# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:38 ajacoutot Exp $

COMMENT =	read/write YAML files with as little code as possible

MODULES =	cpan
DISTNAME =	YAML-Tiny-1.39
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	devel/p5-YAML \
			devel/p5-YAML-Syck \
			devel/p5-YAML-XS

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
