# $OpenBSD: Makefile,v 1.5 2011/01/17 11:57:10 benoit Exp $

COMMENT =	no-fuss generation of Atom syndication feeds

MODULES =	cpan
DISTNAME =	XML-Atom-SimpleFeed-0.86
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
