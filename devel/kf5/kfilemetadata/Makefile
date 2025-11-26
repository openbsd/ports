COMMENT-main =		KDE 5 library for extracting text and metadata
COMMENT-locale =	localization files of kfilemetadata

DISTNAME =		kfilemetadata-${VERSION}

PKGNAME-main =		kf5-kfilemetadata-${VERSION}
PKGNAME-locale =	kf5-kfilemetadata-l10n-${VERSION}
REVISION-locale =	0
REVISION-main =		0

SHARED_LIBS =	KF5FileMetaData		7.3 # 5.20

# split l10n off main package to deconflict with KDE4's kfilemetadata
# use -locale instead of -l10n to please update-plist
MULTI_PACKAGES =	-main -locale

WANTLIB-main += ${COMPILER_LIBCXX} KF5Archive KF5CoreAddons KF5I18n
WANTLIB-main += Qt5Core Qt5Gui Qt5Xml avcodec avformat avutil epub
WANTLIB-main += exiv2 m poppler poppler-qt5 tag

WANTLIB-locale =

# needs c++ and python
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c c++

MODULES +=		lang/python
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

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QMobipocket=ON

.include <bsd.port.mk>
