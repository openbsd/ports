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

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CalendarCore KF6CalendarEvents
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Prison
WANTLIB += KF6Service KF6Solid KF6SyntaxHighlighting KF6TextAddonsWidgets
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextGrammarCheck KF6TextTemplate
WANTLIB += KF6TextTranslator KF6TextUtils KF6WidgetsAddons KF6XmlGui
WANTLIB += KPim6AddressbookImportExport KPim6AkonadiCalendar KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiWidgets KPim6CalendarSupport KPim6CalendarUtils
WANTLIB += KPim6EventViews KPim6GrantleeTheme KPim6Gravatar KPim6IMAP
WANTLIB += KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6ImportWizard KPim6IncidenceEditor KPim6Itinerary
WANTLIB += KPim6KManageSieve KPim6KSieve KPim6KSieveCore KPim6KSieveUi
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MailCommon KPim6MailImporter
WANTLIB += KPim6MailImporterAkonadi KPim6MailTransport KPim6MessageComposer
WANTLIB += KPim6MessageCore KPim6MessageViewer KPim6Mime KPim6MimeTreeParser
WANTLIB += KPim6PimCommon KPim6PimCommonAkonadi KPim6PkPass KPim6TemplateParser
WANTLIB += KPim6TextEdit KPim6Tnef KPim6WebEngineViewer Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += assuan gpgme gpgmepp m markdown qgpgmeqt6


MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

RUN_DEPENDS =	x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kdeclarative \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/prison \
		devel/kf6/solid \
		devel/kf6/syntax-highlighting \
		security/gpgme,-qt \
		security/libassuan \
		textproc/discount \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-contacts>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-import-wizard>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/calendarsupport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/eventviews>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/incidenceeditor>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kaddressbook>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kitinerary>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kpkpass>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/ktnef>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libgravatar>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libksieve>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mailimporter>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
