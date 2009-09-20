# $OpenBSD: Makefile,v 1.3 2009/09/20 12:26:51 espie Exp $

COMMENT =	FCKeditor for drupal

DISTNAME = 	fckeditor-6.x-1.4
PKGNAME =	drupal6-fckeditor-1.4
DISTFILES =	${DISTNAME}.tar.gz \
		FCKeditor_2.6.3.tar.gz:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=fckeditor/}

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/FCKeditor_2.6.3.tar.gz

.include <bsd.port.mk>
