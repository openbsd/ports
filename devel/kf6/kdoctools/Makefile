COMMENT =	create documentation from DocBook
DISTNAME =	kdoctools-${VERSION}

SHARED_LIBS +=  KF6DocTools               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Archive Qt6Core c exslt m xml2
WANTLIB += xslt

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		textproc/docbook-xsl \
		www/p5-URI

RUN_DEPENDS =	devel/kf6/ki18n>=${MODKF6_VERSION} \
		textproc/docbook-xsl

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		textproc/libxml \
		textproc/libxslt

.include <bsd.port.mk>
