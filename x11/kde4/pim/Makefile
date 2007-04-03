# $OpenBSD: Makefile,v 1.1.1.1 2007/04/03 19:44:04 espie Exp $

COMMENT=		"K Desktop Environment, pim"
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
HOMEPAGE=		http://pim.kde.org/

SHARED_LIBS +=	akonadi              0.0      # .1.0
SHARED_LIBS +=	akonadicomponents    0.0      # .1.0
SHARED_LIBS +=	akonadiprivate       0.0      # .1.0
SHARED_LIBS +=	akonadiresources     0.0      # .1.0
SHARED_LIBS +=	akonadisearchprovider 0.0     # .1.0
SHARED_LIBS +=	akregatorprivate     0.0      # .1.0
SHARED_LIBS +=	gpgme++              4.0      # .1.0
SHARED_LIBS +=	index                2.0      # .1.0
SHARED_LIBS +=	kabc_slox            2.0      # .1.0
SHARED_LIBS +=	kabc_xmlrpc          3.0      # .1.0
SHARED_LIBS +=	kabinterfaces        3.0      # .1.0
SHARED_LIBS +=	kaddressbook         2.0      # .1.0
SHARED_LIBS +=	kalarm_resources     0.0      # .1.0
SHARED_LIBS +=	kcal_resourceremote  3.0      # .1.0
SHARED_LIBS +=	kcal_slox            2.0      # .1.0
SHARED_LIBS +=	kcal_xmlrpc          3.0      # .1.0
SHARED_LIBS +=	kdepim               3.0      # .1.0
SHARED_LIBS +=	kgroupwarebase       2.0      # .1.0
SHARED_LIBS +=	kgroupwaredav        2.0      # .1.0
SHARED_LIBS +=	kholidays            3.0      # .1.0
SHARED_LIBS +=	kholidays_ng         0.0      # .1.0
SHARED_LIBS +=	kleopatra            3.0      # .1.0
SHARED_LIBS +=	kmailprivate         0.0      # .1.0
SHARED_LIBS +=	knodecommon          0.0      # .1.0
SHARED_LIBS +=	knotes_xmlrpc        0.0      # .1.0
SHARED_LIBS +=	kocorehelper         3.0      # .1.0
SHARED_LIBS +=	kode                 3.0      # .1.0
SHARED_LIBS +=	kontact              3.0      # .1.0
SHARED_LIBS +=	korg_stdprinting     3.0      # .1.0
SHARED_LIBS +=	korganizer           3.0      # .1.0
SHARED_LIBS +=	korganizer_calendar  3.0      # .1.0
SHARED_LIBS +=	korganizer_eventviewer 3.0    # .1.0
SHARED_LIBS +=	korganizer_interfaces  0.0    # .1.0
SHARED_LIBS +=	kpgp                 6.0      # .2.2
SHARED_LIBS +=	kpimidentities       3.0      # .1.0
SHARED_LIBS +=	kpinterfaces         3.0      # .1.0
SHARED_LIBS +=	kschema              0.0      # .1.0
SHARED_LIBS +=	kschemawidgets       0.0      # .1.0
SHARED_LIBS +=	ksieve               2.0      # .0.0
SHARED_LIBS +=	kslox                2.0      # .1.0
SHARED_LIBS +=	kxmlcommon           0.0      # .1.0
SHARED_LIBS +=	mailtransport        0.0      # .1.0
SHARED_LIBS +=	mimelib              0.0      # .1.1
SHARED_LIBS +=	qgpgme               2.0      # .1.0
SHARED_LIBS +=	schema               0.0      # .1.0
SHARED_LIBS +=	wscl                 0.0      # .1.0
SHARED_LIBS +=	wsdl                 0.0      # .1.0

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefakes,kdefx,kdeprint,kdesu,kdeui,khtml,kimproxy,kio,kjs,knewstuff,knotifyconfig,kparts,ktexteditor,phononcore,sonnetcore,sonnetui,threadweaver::x11/kde4/libs \
		kabc.>=5,emailfunctions,kabc_file_core,kcal,kldap,kmime,kresources,ktnef,kutils,kwalletclient,syndication::x11/kde4/pimlibs \
		gpgme::security/gpgme

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xss Xtst bz2 c fontconfig freetype gif
WANTLIB += gpg-error iconv intl jpeg m pcre pcreposix png pthread
WANTLIB += sasl2 stdc++ util z
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtNetwork QtSql QtSvg QtXml


.include <bsd.port.mk>
