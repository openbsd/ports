# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:59:01 zhuk Exp $

COMMENT-main =	KDE 5 library for extracting text and metadata
COMMENT-locale =localization files of kfilemetadata
DISTNAME =	kfilemetadata-${VERSION}
PKGNAME-main =	kf5-kfilemetadata-${VERSION}
PKGNAME-locale =kf5-kfilemetadata-l10n-${VERSION}

SHARED_LIBS =	KF5FileMetaData		0.0 # 5.20

# split l10n off main package to deconflict with KDE4's kfilemetadata
# use -locale instead of -l10n to please update-plist
MULTI_PACKAGES =	-main -locale

WANTLIB-locale =
WANTLIB-main =	${WANTLIB} KF5Archive KF5I18n Qt5Core Qt5Xml
WANTLIB-main +=	avcodec avformat avutil epub exiv2 poppler-qt5 tag
WANTLIB-main +=	m

BUILD_DEPENDS =		devel/gettext-tools

RUN_DEPENDS-locale =	devel/kf5/ki18n
RUN_DEPENDS-main =	textproc/catdoc

LIB_DEPENDS-locale =
LIB_DEPENDS-main =	audio/taglib \
			devel/kf5/karchive \
			devel/kf5/ki18n \
			graphics/exiv2 \
			graphics/ffmpeg \
			print/poppler,,-qt5 \
			textproc/ebook-tools

PKG_ARCH-locale =	*

MODKF5_L10N_CONFLICT-locale =	Yes

.include <bsd.port.mk>
