# $OpenBSD: Makefile,v 1.5 2011/04/10 20:33:22 jasper Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.07

CATEGORIES =	devel textproc

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

MAKE_ENV +=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
