# $OpenBSD: drupal5.port.mk,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

DIST_SUBDIR ?= drupal5
CATEGORIES +=	www www/drupal5

HOMEPAGE ?=	http://drupal.org/
MASTER_SITES ?=	ftp://ftp.drupal.org/pub/drupal/files/projects/
PKG_ARCH ?=	*

.if !defined(RUN_DEPENDS)
RUN_DEPENDS =	::www/drupal5/core
.endif

.if !defined(WRKDIST)
WRKDIST =	${WRKDIR}/${DISTNAME:C/-5.x.*$//}
.endif

PREFIX ?=	/var/www
DRUPAL ?=	drupal
DRUPAL_ROOT ?=	htdocs/${DRUPAL}
DRUPAL_MODS ?=	${DRUPAL_ROOT}/modules
SUBST_VARS += 	DRUPAL_MODS DRUPAL_ROOT

MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_MODS}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_MODS}; \
		chown -R www.www ${PREFIX}/${DRUPAL_MODS} 
