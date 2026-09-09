COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

# From KDE Gear 26.04.4 to KDE Frameworks 6.29
EPOCH =		0

SHARED_LIBS +=  KF6Mime                   0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Codecs Qt6Core m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf6/kcodecs

.include <bsd.port.mk>
