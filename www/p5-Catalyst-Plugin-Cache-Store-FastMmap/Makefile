# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:50 espie Exp $

COMMENT =	FastMmap cache store for Catalyst::Plugin::Cache

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-Store-FastMmap-0.02
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Cache-FastMmap \
		devel/p5-Path-Class \
		www/p5-Catalyst-Plugin-Cache

.include <bsd.port.mk>
