# $OpenBSD: Makefile,v 1.5 2018/03/31 15:27:20 espie Exp $

COMMENT =	printer-friendly pages in drupal

MODDRUPAL_PROJECT = print
MODDRUPAL_VERSION = 1.3
MODDRUPAL_PKGNAME = printer-friendly

# Anticipatory symlinking to tcpdf.
post-install:
	@cd ${PREFIX}/${DRUPAL_MODS}print/lib &&\
	 ln -fs ../../../../../../../tcpdf

.include <bsd.port.mk>
