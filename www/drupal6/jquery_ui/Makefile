# $OpenBSD: Makefile,v 1.5 2012/01/28 10:02:35 espie Exp $

COMMENT =	wrapper module around the jQuery UI effects library

DISTNAME = 	jquery_ui-6.x-1.5
DISTNAME0 = 	jquery.ui-1.6
PKGNAME =	drupal6-jquery_ui-1.5

EXTRACT_SUFX0 =	.zip

MASTER_SITES0 = http://jquery-ui.googlecode.com/files/

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME0}${EXTRACT_SUFX0}:0

post-extract:
	@mv ${WRKDIR}/${DISTNAME0} ${WRKDIST}/jquery.ui
	@rm -rf ${WRKDIST}/jquery.ui/demos

.include <bsd.port.mk>
