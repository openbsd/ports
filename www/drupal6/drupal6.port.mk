# $OpenBSD: drupal6.port.mk,v 1.9 2015/07/09 13:28:54 espie Exp $


# three types of things we can install, by default plugin
MODDRUPAL_THEME ?=	No

.if defined(DRUPAL_LANG)
MODDRUPAL_LANG ?=	Yes
.else
MODDRUPAL_LANG ?=	No
.endif


DIST_SUBDIR ?= drupal6
CATEGORIES +=	www www/drupal6

HOMEPAGE ?=	http://drupal.org/
MASTER_SITES ?=	http://www.drupal.org/files/projects/ \
		ftp://ftp.drupal.org/pub/drupal/files/projects/
PKG_ARCH ?=	*

.if !defined(WRKDIST)
WRKDIST =	${WRKDIR}/${DISTNAME:C/-6.x.*$//}
.endif

PREFIX ?=	/var/www
DRUPAL ?=	drupal6
DRUPAL_ROOT ?=	htdocs/${DRUPAL}
DRUPAL_MODS ?=	${DRUPAL_ROOT}/sites/all/modules/
DRUPAL_THEMES ?=${DRUPAL_ROOT}/sites/all/themes/
DRUPAL_OWNER =	root
DRUPAL_GROUP =	daemon
SUBST_VARS += 	DRUPAL_MODS DRUPAL_THEMES DRUPAL_ROOT \
		DRUPAL_OWNER DRUPAL_GROUP DRUPAL

.if ${MODDRUPAL_THEME:L} == "yes"
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_THEMES}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_THEMES}; \
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_THEMES} 
.elif ${MODDRUPAL_LANG:L} == "yes"
MODDRUPAL_INSTALL = \
	mkdir -p ${PREFIX}/${DRUPAL_ROOT}; \
	cp -R ${WRKDIST}/* ${PREFIX}/${DRUPAL_ROOT}; \
	chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_ROOT}
SUBST_VARS += DRUPAL_LANG
.else
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_MODS}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_MODS}; \
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_MODS} 
.endif

RUN_DEPENDS ?=	drupal->=6,<7:www/drupal6/core
