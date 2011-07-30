# $OpenBSD: Makefile,v 1.4 2011/07/30 19:43:05 stephan Exp $

COMMENT =	wrapper module around the jQuery UI effects library

DISTNAME = 	jquery_ui-6.x-1.4
DISTNAME0 = 	jquery.ui-1.6
PKGNAME =	drupal6-jquery_ui-1.4
REVISION =	1

EXTRACT_SUFX0 =	.zip

MASTER_SITES0 = http://jquery-ui.googlecode.com/files/

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME0}${EXTRACT_SUFX0}:0

post-extract:
	@mv ${WRKDIR}/${DISTNAME0} ${WRKDIST}/jquery.ui
	@rm -rf ${WRKDIST}/jquery.ui/demos

.include <bsd.port.mk>
