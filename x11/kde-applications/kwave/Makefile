COMMENT =	sound editor for KDE

DISTNAME =	kwave-${VERSION}

CATEGORIES =	audio

SHARED_LIBS +=	kwave                     0.0 # 0.0
SHARED_LIBS +=	kwavegui                  0.0 # 0.0

HOMEPAGE =	https://apps.kde.org/kwave/

WANTLIB += ${COMPILER_LIBCXX} FLAC FLAC++ GL KF6Archive KF6Bookmarks
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Widgets Qt6Xml audiofile c fftw3 id3
WANTLIB += m mad ogg opus pulse samplerate vorbis vorbisenc z

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	audio/flac \
		audio/id3lib \
		audio/libmad \
		audio/libogg \
		audio/libsamplerate \
		audio/libvorbis \
		audio/opus \
		audio/pulseaudio \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/libaudiofile \
		math/fftw3,-main,double \
		x11/qt6/qtmultimedia

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

CONFIGURE_ARGS =	-DWITH_OSS=OFF
CONFIGURE_ARGS +=	-DWITH_ALSA=OFF

.include <bsd.port.mk>
