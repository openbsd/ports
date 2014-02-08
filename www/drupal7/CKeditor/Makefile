# $OpenBSD: Makefile,v 1.4 2014/02/08 21:16:26 espie Exp $

COMMENT =	CKeditor for drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	ckeditor-7.x-1.13
PKGNAME =	drupal7-ckeditor-1.13
V =		4.2
ED =		ckeditor_$V_standard.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
