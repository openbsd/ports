# $OpenBSD: Makefile,v 1.3 2010/11/15 09:05:40 stephan Exp $

COMMENT =	CKeditor for drupal

DISTNAME = 	ckeditor-6.x-1.2
PKGNAME =	drupal6-ckeditor-1.2
V =		3.4.1
REVISION =	0
ED =		ckeditor_$V.tar.gz
DISTFILES =	${DISTNAME}.tar.gz \
		${ED}:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%20$V/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${ED}
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
