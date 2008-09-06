# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 10:34:02 simon Exp $

COMMENT =	no-fuss generation of Atom syndication feeds

MODULES =	cpan
DISTNAME =	XML-Atom-SimpleFeed-0.82
CATEGORIES =	www textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Carp-Clan

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
