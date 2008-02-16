# $OpenBSD: Makefile,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

COMMENT =	tinymce for drupal

DISTNAME = 	tinymce-5.x-1.9
PKGNAME =	drupal5-tinymce-1.9

DISTFILES =	${DISTNAME}.tar.gz \
		tinymce_2_1_3.zip:0 tinymce_compressor_php_2_0.zip:0
MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=tinymce/}

post-extract:
	mkdir -p ${WRKDIST}/tinymce
	mv ${WRKDIST}/jscripts ${WRKDIST}/tinymce
	mv ${WRKDIR}/tinymce_compressor_php/tiny_mce_gzip.{js,php} \
		${WRKDIST}/tinymce/jscripts/tiny_mce

CACHEDIR =	${PREFIX}/${DRUPAL_MODS}/tinymce/tinymce/jscripts/tiny_mce/cache

post-install:
	${INSTALL_DATA_DIR} ${CACHEDIR}
	cd ${PREFIX}/${DRUPAL_MODS}/tinymce && \
		mv plugin_reg.php plugin_reg.php.dist
	chown www.www ${CACHEDIR}
	chmod ug+rwx ${CACHEDIR}
	
.include <bsd.port.mk>
