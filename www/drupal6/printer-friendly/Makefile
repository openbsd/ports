# $OpenBSD: Makefile,v 1.8 2010/11/16 16:20:17 stephan Exp $

COMMENT =	printer-friendly pages in drupal

DISTNAME = 	print-6.x-1.12
PKGNAME =	drupal6-printer-friendly-1.12
REVISION =	0

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
