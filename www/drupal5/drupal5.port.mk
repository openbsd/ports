# $OpenBSD: drupal5.port.mk,v 1.4 2008/03/16 10:15:28 espie Exp $


# three types of things we can install, by default plugin
MODDRUPAL_THEME ?=	No

.if defined(LANG)
MODDRUPAL_LANG ?=	Yes
.else
MODDRUPAL_LANG ?=	No
.endif


DIST_SUBDIR ?= drupal5
CATEGORIES +=	www www/drupal5

HOMEPAGE ?=	http://drupal.org/
MASTER_SITES ?=	ftp://ftp.drupal.org/pub/drupal/files/projects/
PKG_ARCH ?=	*

.if !defined(WRKDIST)
WRKDIST =	${WRKDIR}/${DISTNAME:C/-5.x.*$//}
.endif

PREFIX ?=	/var/www
DRUPAL ?=	drupal
DRUPAL_ROOT ?=	htdocs/${DRUPAL}
DRUPAL_MODS ?=	${DRUPAL_ROOT}/sites/all/modules
DRUPAL_THEMES ?=${DRUPAL_ROOT}/sites/all/themes
DRUPAL_LOCALE ?=${DRUPAL_MODS}/node
DRUPAL_USER =	www
DRUPAL_GROUP =	www
SUBST_VARS += 	DRUPAL_LOCALE DRUPAL_MODS DRUPAL_THEMES DRUPAL_ROOT \
		DRUPAL_USER DRUPAL_GROUP

.if ${MODDRUPAL_THEME:L} == "yes"
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_THEMES}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_THEMES}; \
		chown -R www.www ${PREFIX}/${DRUPAL_THEMES} 
.elif ${MODDRUPAL_LANG:L} == "yes"
MODDRUPAL_INSTALL = \
	${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/profiles/localized; \
	${INSTALL_DATA} ${WRKDIST}/installer.po ${PREFIX}/${DRUPAL_ROOT}/profiles/localized/${LANG}.po; \
	${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_LOCALE}/po; \
	${INSTALL_DATA} ${WRKDIST}/${LANG}.po ${PREFIX}/${DRUPAL_LOCALE}/po; \
	chown -R www.www ${PREFIX}/${DRUPAL_ROOT}
SUBST_VARS += LANG
RUN_DEPENDS ?=	::www/drupal5/autolocale
.else
MODDRUPAL_INSTALL = \
		mkdir -p ${PREFIX}/${DRUPAL_MODS}; \
		cp -R ${WRKDIST} ${PREFIX}/${DRUPAL_MODS}; \
		chown -R www.www ${PREFIX}/${DRUPAL_MODS} 
.endif

RUN_DEPENDS ?=	::www/drupal5/core
