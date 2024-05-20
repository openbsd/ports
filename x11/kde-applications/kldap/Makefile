COMMENT =	LDAP access API for KDE
DISTNAME =	kldap-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6LdapCore             0.0 # 0.0
SHARED_LIBS +=	KPim6LdapWidgets          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6I18n KF6KIOCore KF6WidgetsAddons Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets lber ldap m qt6keychain
WANTLIB += sasl2

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	databases/openldap \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		security/qtkeychain,qt6 \
		security/cyrus-sasl2 \
		

.include <bsd.port.mk>
