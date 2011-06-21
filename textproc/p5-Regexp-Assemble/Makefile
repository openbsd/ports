# $OpenBSD: Makefile,v 1.4 2011/06/21 14:36:36 jasper Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Regexp-Assemble-0.35
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
