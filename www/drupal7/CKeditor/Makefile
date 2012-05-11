# $OpenBSD: Makefile,v 1.2 2012/05/11 06:59:28 espie Exp $

COMMENT =	CKeditor for drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	ckeditor-7.x-1.9
PKGNAME =	drupal7-ckeditor-1.9
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
