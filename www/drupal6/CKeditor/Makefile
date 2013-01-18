# $OpenBSD: Makefile,v 1.9 2013/01/18 11:16:50 sthen Exp $

COMMENT =	CKeditor for drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME =	ckeditor-6.x-1.12
PKGNAME =	drupal6-ckeditor-1.12
V =		3.6.3
ED =		ckeditor_$V.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
