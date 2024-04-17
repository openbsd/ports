COMMENT =	KDE 6 library for extracting text and metadata

DISTNAME =	kfilemetadata-${VERSION}

SHARED_LIBS +=  KF6FileMetaData           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CoreAddons KF6I18n
WANTLIB += QMobipocket6 Qt6Core Qt6Gui Qt6Xml avcodec avformat
WANTLIB += avutil epub exiv2 m poppler poppler-qt6 tag

MODULES +=	lang/python
# required only for externalextractortest and externalwritertest
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =	textproc/catdoc

LIB_DEPENDS =	audio/taglib \
		devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		graphics/exiv2 \
		graphics/ffmpeg \
		print/poppler,-qt6 \
		textproc/ebook-tools \
		x11/kde-applications/kf6-kdegraphics-mobipocket

.include <bsd.port.mk>
