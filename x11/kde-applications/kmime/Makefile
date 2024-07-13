COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=	KPim6Mime                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Codecs KF6I18n Qt6Core m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf6/kcodecs \
		devel/kf6/ki18n

.include <bsd.port.mk>
