# $OpenBSD: Makefile,v 1.3 2017/07/27 09:34:38 sthen Exp $

COMMENT =	create documentation from DocBook
DISTNAME =	kdoctools-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF5DocTools               0.0 # 5.34

WANTLIB =	KF5Archive ${COMPILER_LIBCXX} Qt5Core c exslt m xml2 xslt

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
