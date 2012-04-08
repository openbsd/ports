# $OpenBSD: Makefile,v 1.6 2012/04/08 21:58:36 sthen Exp $

COMMENT =	cache the output of entire pages

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-PageCache-0.31
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Plugin-Cache>=0.10 \
		security/p5-Digest-SHA1 \
		devel/p5-MRO-Compat
REGRESS_DEPENDS =	devel/p5-Cache-Cache \
			www/p5-Catalyst-Plugin-I18N

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
