# $OpenBSD: Makefile,v 1.6 2018/03/30 13:04:59 espie Exp $

COMMENT =	CKeditor for drupal

DISTNAME = 	ckeditor-7.x-1.18
PKGNAME =	drupal7-ckeditor-1.18
V =		4.9.1
ED =		ckeditor_$V_standard.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
