# $OpenBSD: Makefile,v 1.7 2010/10/15 10:40:28 espie Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-6.x-1.12
PKGNAME =	drupal6-printer-friendly-1.12

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
