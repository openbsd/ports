# $OpenBSD: Makefile,v 1.1.1.1 2010/03/22 20:44:07 espie Exp $

COMMENT =	CKeditor for drupal

DISTNAME = 	ckeditor-6.x-1.1
PKGNAME =	drupal6-ckeditor-1.1
DISTFILES =	${DISTNAME}.tar.gz \
		ckeditor_3.2.tar.gz:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.2/

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/ckeditor_3.2.tar.gz
	chmod -R u+wX ${WRKDIST}/ckeditor

.include <bsd.port.mk>
