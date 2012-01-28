# $OpenBSD: Makefile,v 1.9 2012/01/28 10:02:35 espie Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-6.x-1.14
PKGNAME =	drupal6-printer-friendly-1.14

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
