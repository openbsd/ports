# $OpenBSD: Makefile,v 1.7 2018/03/31 11:38:29 espie Exp $

COMMENT =	CKeditor for drupal

MODDRUPAL_PROJECT = ckeditor
MODDRUPAL_VERSION = 1.18
REVISION = 0
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
