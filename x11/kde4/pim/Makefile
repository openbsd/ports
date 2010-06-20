# $OpenBSD: Makefile,v 1.3 2010/06/20 20:29:10 espie Exp $

COMMENT=		K Desktop Environment, pim
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
HOMEPAGE=		http://pim.kde.org/

SHARED_LIBS +=	akonadi-kcal_next 0.0
SHARED_LIBS +=	akonadi_next 0.0
SHARED_LIBS +=	akregatorinterfaces 0.0
SHARED_LIBS +=	gwsoap 0.0
SHARED_LIBS +=	kabc_groupdav 0.0
SHARED_LIBS +=	kabcgroupwise 0.0
SHARED_LIBS +=	kabckolab 0.0
SHARED_LIBS +=	kaddressbookprivate 0.0
SHARED_LIBS +=	kalarm_calendar 0.0
SHARED_LIBS +=	kcal_groupdav 0.0
SHARED_LIBS +=	kcal_resourceblog 0.0
SHARED_LIBS +=	kcalgroupwise 0.0
SHARED_LIBS +=	kcalkolab 0.0
SHARED_LIBS +=	kleo 0.0
SHARED_LIBS +=	knoteskolab 0.0
SHARED_LIBS +=	kontactprivate 0.0
SHARED_LIBS +=	korganizer_core 0.0
SHARED_LIBS +=	korganizerprivate 0.0
SHARED_LIBS +=	messagecore 0.0
SHARED_LIBS +=	messagelist 0.0
SHARED_LIBS +=	messageviewer 0.0
SHARED_LIBS +=	akregatorprivate     0.0      # .1.0
SHARED_LIBS +=	kabc_slox            2.0      # .1.0
SHARED_LIBS +=	kalarm_resources     0.0      # .1.0
SHARED_LIBS +=	kcal_resourceremote  3.0      # .1.0
SHARED_LIBS +=	kcal_slox            2.0      # .1.0
SHARED_LIBS +=	kdepim               3.0      # .1.0
SHARED_LIBS +=	kgroupwarebase       2.0      # .1.0
SHARED_LIBS +=	kgroupwaredav        2.0      # .1.0
SHARED_LIBS +=	kmailprivate         0.0      # .1.0
SHARED_LIBS +=	knodecommon          0.0      # .1.0
SHARED_LIBS +=	korg_stdprinting     3.0      # .1.0
SHARED_LIBS +=	korganizer_calendar  3.0      # .1.0
SHARED_LIBS +=	korganizer_eventviewer 3.0    # .1.0
SHARED_LIBS +=	korganizer_interfaces  0.0    # .1.0
SHARED_LIBS +=	kpgp                 6.0      # .2.2
SHARED_LIBS +=	ksieve               2.0      # .0.0
SHARED_LIBS +=	kslox                2.0      # .1.0
SHARED_LIBS +=	mimelib              0.0      # .1.1

BUILD_DEPENDS +=	::x11/kde4/automoc
LIB_DEPENDS+=	kdecore.>=8,kde3support,kdeui,khtml,kimproxy,kio,kjs,knotifyconfig,kparts,ktexteditor,threadweaver,solid,nepomuk,kdnssd,kfile,knewstuff2::x11/kde4/libs \
		kabc.>=5,kcal,kldap,kmime,kresources,ktnef,kutils,syndication,qgpgme,mailtransport,akonadi-contact,akonadi-kcal,akonadi-kde,akonadi-kmime,gpgme++,gpgme++-pthread,kblog,kholidays,kimap,kontactinterface,kpimidentities,kpimtextedit,kpimutils::x11/kde4/pimlibs

WANTLIB += X11
WANTLIB += Xss c
WANTLIB += gpg-error iconv intl m pthread
WANTLIB += stdc++ z
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtNetwork QtSql QtSvg QtXml
WANTLIB += akonadiprotocolinternals streamanalyzer streams phonon
WANTLIB += gpgme-pthread

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
