# $OpenBSD: Makefile,v 1.1.1.1 2012/04/10 12:50:24 espie Exp $

COMMENT =	CKeditor for drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	ckeditor-7.x-1.8
PKGNAME =	drupal7-ckeditor-1.8
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
