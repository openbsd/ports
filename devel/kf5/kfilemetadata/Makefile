# $OpenBSD: Makefile,v 1.17 2020/03/23 18:01:07 rsadowski Exp $

COMMENT-main =	KDE 5 library for extracting text and metadata
COMMENT-locale =localization files of kfilemetadata
DISTNAME =	kfilemetadata-${VERSION}
PKGNAME-main =	kf5-kfilemetadata-${VERSION}
PKGNAME-locale =kf5-kfilemetadata-l10n-${VERSION}

SHARED_LIBS =	KF5FileMetaData		6.0# 5.20

# split l10n off main package to deconflict with KDE4's kfilemetadata
# use -locale instead of -l10n to please update-plist
MULTI_PACKAGES =	-main -locale

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CoreAddons KF5I18n
WANTLIB += Qt5Core Qt5Xml avcodec avformat avutil epub exiv2 m
WANTLIB += poppler poppler-qt5 tag

WANTLIB-locale =

MODULES +=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
# required only for externalextractortest and externalwritertest
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS-locale =	devel/kf5/ki18n>=${MODKF5_VERSION}
RUN_DEPENDS-main =	textproc/catdoc

LIB_DEPENDS-locale =
LIB_DEPENDS-main =	audio/taglib \
			devel/kf5/karchive>=${MODKF5_VERSION} \
			devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			graphics/exiv2 \
			graphics/ffmpeg \
			print/poppler,-qt5 \
			textproc/ebook-tools

PKG_ARCH-locale =	*

MODKF5_L10N_CONFLICT-locale =	Yes

.include <bsd.port.mk>
