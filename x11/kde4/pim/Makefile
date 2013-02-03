# $OpenBSD: Makefile,v 1.9 2013/02/03 13:21:42 zhuk Exp $

COMMENT=		K Desktop Environment, pim
DISTNAME=		kdepim-${VERSION}
HOMEPAGE=		http://pim.kde.org/
USE_GROFF =		Yes
REVISION =		0

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

MODULES =		devel/gettext

BUILD_DEPENDS +=	devel/automoc
LIB_DEPENDS+=		x11/kde4/libs \
			x11/kde4/pimlibs

WANTLIB += X11 Xss akonadi-contact akonadi-kcal akonadi-kde akonadi-kmime \
	akonadiprotocolinternals c gpg-error gpgme++ gpgme++-pthread \
	gpgme-pthread kabc>=5 kblog kcal kde3support kdecore>=8 \
	kdeui kdnssd kfile kholidays khtml kimap kimproxy kio kjs kldap kmime \
	knewstuff2 knotifyconfig kontactinterface kparts kpimidentities \
	kpimtextedit kpimutils kresources ktexteditor ktnef kutils \
	lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner lib/qt4/QtGui \
	lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml m \
	mailtransport nepomuk phonon pthread qgpgme solid stdc++ \
	streamanalyzer streams syndication threadweaver z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


.include <bsd.port.mk>
