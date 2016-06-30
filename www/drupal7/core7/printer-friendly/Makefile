# $OpenBSD: Makefile,v 1.1.1.1 2016/06/30 11:50:25 espie Exp $

COMMENT =	printer-friendly pages in drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	print-7.x-1.2
PKGNAME =	drupal7-printer-friendly-1.2
REVISION =	0

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
