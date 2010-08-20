# $OpenBSD: Makefile,v 1.6 2010/08/20 14:42:56 stephan Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-6.x-1.11
PKGNAME =	drupal6-printer-friendly-1.11

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
