# $OpenBSD: Makefile,v 1.12 2020/06/09 07:14:44 jasper Exp $

COMMENT =	create documentation from DocBook
DISTNAME =	kdoctools-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF5DocTools               3.0 # 5.34

WANTLIB += ${COMPILER_LIBCXX} KF5Archive Qt5Core c exslt m xml2
WANTLIB += xslt

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		textproc/docbook-xsl \
		www/p5-URI

RUN_DEPENDS =	devel/kf5/ki18n>=${MODKF5_VERSION} \
		textproc/docbook-xsl

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		textproc/libxml \
		textproc/libxslt

#The following tests FAILED:
#2 - kdoctools_install (Failed)

.include <bsd.port.mk>
