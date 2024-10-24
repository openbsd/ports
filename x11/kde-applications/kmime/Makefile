COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=	KPim6Mime                 1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Codecs Qt6Core m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf6/kcodecs

.include <bsd.port.mk>
