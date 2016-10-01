# $OpenBSD: Makefile,v 1.10 2016/10/01 11:54:17 naddy Exp $

COMMENT =	wrapper module around the jQuery UI effects library
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	jquery_ui-6.x-1.5
DISTNAME0 = 	jquery.ui-1.6
PKGNAME =	drupal6-jquery_ui-1.5
REVISION =	0

EXTRACT_SUFX0 =	.zip

MASTER_SITES0 = ${MASTER_SITE_GOOGLECODE:=jquery-ui/}

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME0}${EXTRACT_SUFX0}:0

post-extract:
	@mv ${WRKDIR}/${DISTNAME0} ${WRKDIST}/jquery.ui
	rm -r ${WRKDIST}/jquery.ui/demos

.include <bsd.port.mk>
