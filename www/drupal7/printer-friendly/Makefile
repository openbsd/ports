# $OpenBSD: Makefile,v 1.6 2019/01/05 22:56:20 danj Exp $

COMMENT =	printer-friendly pages in drupal
REVISION =	0

MODDRUPAL_PROJECT = print
MODDRUPAL_VERSION = 1.3
MODDRUPAL_PKGNAME = printer-friendly

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
