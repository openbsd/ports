# $OpenBSD: Makefile,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

COMMENT =	french translation
LANG =		fr

DISTNAME =	${LANG}-5.x-1.1
PKGNAME =	drupal5-${LANG}-1.1

RUN_DEPENDS =	::www/drupal5/autolocale

KLUDGE =	${DRUPAL_MODS}/node

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/profiles/localized
	${INSTALL_DATA} ${WRKDIST}/installer.po ${PREFIX}/${DRUPAL_ROOT}/profiles/localized/${LANG}.po
	# XXX kludge to make this `appear' on first import
	${INSTALL_DATA_DIR} ${PREFIX}/${KLUDGE}/po
	${INSTALL_DATA} ${WRKDIST}/${LANG}.po ${PREFIX}/${KLUDGE}/po
	chown -R www.www ${PREFIX}/${DRUPAL_ROOT}

SUBST_VARS += KLUDGE LANG

.include <bsd.port.mk>
