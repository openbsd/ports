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
SHARED_LIBS +=  akonadidatasetools                       2.2 # 0.0
SHARED_LIBS +=	KPim6AutoGenerateText                    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CalendarCore KF6CalendarEvents
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Prison KF6Service
WANTLIB += KF6SyntaxHighlighting KF6TextAddonsWidgets KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextAutoGenerateText
WANTLIB += KF6TextCustomEditor KF6TextGrammarCheck KF6TextTemplate
WANTLIB += KF6TextTranslator KF6TextUtils KF6WidgetsAddons KF6XmlGui
WANTLIB += KPim6AddressbookImportExport KPim6AkonadiCalendar KPim6AkonadiCalendarCore
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiWidgets KPim6CalendarSupport KPim6CalendarUtils
WANTLIB += KPim6EventViews KPim6GrantleeTheme KPim6Gravatar KPim6IMAP
WANTLIB += KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6ImportWizard KPim6IncidenceEditor KPim6Itinerary
WANTLIB += KPim6KManageSieve KPim6KSieve KPim6KSieveCore KPim6KSieveUi
WANTLIB += KPim6LdapCore KPim6LdapWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailCommon KPim6MailImporter KPim6MailImporterAkonadi
WANTLIB += KPim6MailTransport KPim6MessageComposer KPim6MessageCore
WANTLIB += KPim6MessageViewer KPim6Mime KPim6MimeTreeParser KPim6PimCommon
WANTLIB += KPim6PimCommonActivities KPim6PimCommonAkonadi KPim6PkPass
WANTLIB += KPim6TemplateParser KPim6TextEdit KPim6Tnef KPim6WebEngineViewer
WANTLIB += PlasmaActivities Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Positioning Qt6PrintSupport Qt6Qml Qt6Quick
WANTLIB += Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml gpg-error gpgme gpgmepp m markdown
WANTLIB += qgpgmeqt6


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
		devel/kf6/syntax-highlighting \
		security/qgpgme \
		textproc/discount \
		textproc/ktextaddons \
		devel/kf6/kcmutils \
		x11/kde-plasma/plasma-activities \
		x11/kde-applications/kldap>=${VERSION} \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-import-wizard>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/calendarsupport>=${VERSION} \
		x11/kde-applications/eventviews>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/incidenceeditor>=${VERSION} \
		x11/kde-applications/kaddressbook>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kitinerary>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/kpkpass>=${VERSION} \
		x11/kde-applications/ktnef>=${VERSION} \
		x11/kde-applications/libgravatar>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/libksieve>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION} \
		x11/kde-applications/mailimporter>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
