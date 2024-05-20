COMMENT =	library for accessing mail storages in MBox format
DISTNAME =	kmbox-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6Mbox                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KPim6Mime Qt6Core m

LIB_DEPENDS =	x11/kde-applications/kmime>=${MODKDE_VERSION}

.include <bsd.port.mk>
