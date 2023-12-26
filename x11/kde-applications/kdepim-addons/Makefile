COMMENT =	KDE PIM mail related libraries
DISTNAME =	kdepim-addons-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  adblocklibprivate                        2.0 # 5.13.2
SHARED_LIBS +=  coisceim_widget                          2.0 # 5.13.2
SHARED_LIBS +=  dkimverifyconfigure                      5.1 # 5.13.2
SHARED_LIBS +=  grammarcommon                            2.0 # 5.13.2
SHARED_LIBS +=  kaddressbookimportexportlibprivate       2.0 # 5.13.2
SHARED_LIBS +=  kaddressbookmergelibprivate              2.0 # 5.13.2
SHARED_LIBS +=  kmailgrammalecte                         2.0 # 5.13.2
SHARED_LIBS +=  kmaillanguagetool                        5.0 # 5.13.2
SHARED_LIBS +=  kmailmarkdown                            3.1 # 5.13.2
SHARED_LIBS +=  kmailquicktextpluginprivate              2.0 # 5.13.2
SHARED_LIBS +=  shorturlpluginprivate                    2.0 # 5.13.2
SHARED_LIBS +=  expireaccounttrashfolderconfig           2.1 # 5.16.1
SHARED_LIBS +=  folderconfiguresettings                  2.1 # 5.16.1
SHARED_LIBS +=  kmailconfirmbeforedeleting               3.1 # 5.18.3
SHARED_LIBS +=  scamconfiguresettings                    2.1 # 5.19.0
SHARED_LIBS +=  openurlwithconfigure                     2.1 # 5.19.0
SHARED_LIBS +=  akonadidatasetools                       2.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5CalendarCore KF5CalendarEvents KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5GuiAddons KF5Holidays
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Prison KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5SyntaxHighlighting KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5TextGrammarCheck KF5TextTranslator
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KPim5AddressbookImportExport KPim5AkonadiCalendar KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiMime KPim5AkonadiNotes
WANTLIB += KPim5AkonadiWidgets KPim5CalendarSupport KPim5CalendarUtils
WANTLIB += KPim5ContactEditor KPim5EventViews KPim5GrantleeTheme
WANTLIB += KPim5Gravatar KPim5IMAP KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5ImportWizard KPim5IncidenceEditor KPim5Itinerary
WANTLIB += KPim5KManageSieve KPim5KSieve KPim5KSieveUi KPim5Libkdepim
WANTLIB += KPim5Libkleo KPim5MailCommon KPim5MailImporter KPim5MailImporterAkonadi
WANTLIB += KPim5MailTransport KPim5MessageComposer KPim5MessageCore
WANTLIB += KPim5MessageViewer KPim5Mime KPim5MimeTreeParser KPim5PimCommon
WANTLIB += KPim5PimCommonAkonadi KPim5PkPass KPim5TemplateParser
WANTLIB += KPim5TextEdit KPim5Tnef KPim5WebEngineViewer Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 assuan gpgme
WANTLIB += gpgmepp m markdown qgpgme

WANTLIB += lib/inotify/inotify

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

RUN_DEPENDS =	x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		devel/libinotify \
		security/gpgme,-qt \
		security/gpgme \
		textproc/discount \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-calendar>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-import-wizard>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_VERSION} \
		x11/kde-applications/calendarsupport>=${MODKDE_VERSION} \
		x11/kde-applications/eventviews>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/incidenceeditor>=${MODKDE_VERSION} \
		x11/kde-applications/kaddressbook>=${MODKDE_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kitinerary>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/kpkpass>=${MODKDE_VERSION} \
		x11/kde-applications/ktnef>=${MODKDE_VERSION} \
		x11/kde-applications/libgravatar>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_VERSION} \
		x11/kde-applications/libksieve>=${MODKDE_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_VERSION} \
		x11/kde-applications/mailimporter>=${MODKDE_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION} \
		security/libassuan \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
