# $OpenBSD: Makefile,v 1.15 2016/06/30 11:48:26 espie Exp $

COMMENT =	printer-friendly pages in drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	print-6.x-1.19
PKGNAME =	drupal6-printer-friendly-1.19
REVISION =	0

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
