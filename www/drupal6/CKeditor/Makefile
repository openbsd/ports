# $OpenBSD: Makefile,v 1.4 2011/05/30 09:36:04 sthen Exp $

COMMENT =	CKeditor for drupal

DISTNAME = 	ckeditor-6.x-1.3
PKGNAME =	drupal6-ckeditor-1.3
V =		3.6
ED =		ckeditor_$V.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
