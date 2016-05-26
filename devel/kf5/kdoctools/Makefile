# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	create documentation from DocBook
DISTNAME =	kdoctools-${VERSION}

WANTLIB =	KF5Archive Qt5Core c exslt m xml2 xslt

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/ki18n \
		textproc/docbook-xsl \
		www/p5-URI

RUN_DEPENDS =	devel/kf5/ki18n \
		textproc/docbook-xsl

LIB_DEPENDS =	devel/kf5/karchive \
		textproc/libxml \
		textproc/libxslt

.include <bsd.port.mk>
