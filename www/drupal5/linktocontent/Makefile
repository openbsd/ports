# $OpenBSD: Makefile,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

COMMENT =	link to content from tinymce

DISTNAME = 	linktocontent-5.x-1.7
PKGNAME =	drupal5-link-to-content-1.7

RUN_DEPENDS =	::www/drupal5/tinyMCE

LTC = ${PREFIX}/${DRUPAL_MODS}/linktocontent/tinymce_plugins
MCE_PLUGINS =${PREFIX}/${DRUPAL_MODS}/tinymce/tinymce/jscripts/tiny_mce/plugins

post-install:
	mkdir -p ${MCE_PLUGINS}
	mv  ${LTC}/* ${MCE_PLUGINS}
	rmdir ${LTC}
	chown -R www.www ${MCE_PLUGINS}

.include <bsd.port.mk>
