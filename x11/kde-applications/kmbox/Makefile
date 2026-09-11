COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6Mbox                 1.0 # 0.0

MODULES =	lang/python

WANTLIB += ${COMPILER_LIBCXX} KF6Mime Qt6Core m

LIB_DEPENDS = devel/kf6/kmime

.include <bsd.port.mk>
