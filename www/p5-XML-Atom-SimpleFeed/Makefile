# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT =	no-fuss generation of Atom syndication feeds

MODULES =	cpan
DISTNAME =	XML-Atom-SimpleFeed-0.82
REVISION =	0
CATEGORIES =	www textproc
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Carp-Clan

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
