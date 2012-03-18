# $OpenBSD: Makefile,v 1.7 2012/03/18 16:19:26 sthen Exp $

COMMENT =	CKeditor for drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME =	ckeditor-6.x-1.10
PKGNAME =	drupal6-ckeditor-1.10
V =		3.6.2
ED =		ckeditor_$V.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
