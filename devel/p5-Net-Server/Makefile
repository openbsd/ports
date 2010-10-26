# $OpenBSD: Makefile,v 1.14 2010/10/26 09:09:18 merdely Exp $

COMMENT =	extensible framework for Perl server engines

MODULES =	cpan
DISTNAME =	Net-Server-0.99
CATEGORIES =	devel net
USE_GROFF =	Yes

HOMEPAGE =	http://seamons.com/projects/

MAINTAINER =	Michael Erdely <merdely@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODCPAN_EXAMPLES =	Yes
REGRESS_DEPENDS =	::devel/p5-IO-Multiplex

.include <bsd.port.mk>
