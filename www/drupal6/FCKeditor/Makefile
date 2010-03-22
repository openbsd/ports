# $OpenBSD: Makefile,v 1.7 2010/03/22 10:28:38 espie Exp $

COMMENT =	FCKeditor for drupal

DISTNAME = 	fckeditor-6.x-2.1
PKGNAME =	drupal6-fckeditor-2.1
DISTFILES =	${DISTNAME}.tar.gz \
		FCKeditor_2.6.6.tar.gz:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=fckeditor/}

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/FCKeditor_2.6.6.tar.gz
	chmod -R u+wX ${WRKDIST}/fckeditor

.include <bsd.port.mk>
