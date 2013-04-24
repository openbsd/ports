# $OpenBSD: Makefile,v 1.14 2013/04/24 20:03:39 zhuk Exp $

COMMENT =	libraries for KDE PIM services
DISTNAME =	kdepimlibs-${MODKDE4_VERSION}

SHARED_LIBS =	kabc                 5.0      # .4.0
SHARED_LIBS +=	kabc_file_core       0.0      # .4.0
SHARED_LIBS +=	kalarmcal	     0.0      # 2.7
SHARED_LIBS +=	kcal                 5.0      # .4.0
SHARED_LIBS +=	kldap                0.0      # .4.0
SHARED_LIBS +=	kmime                6.0      # .4.0
SHARED_LIBS +=	kresources           5.0      # .4.0
SHARED_LIBS +=	ktnef                3.0      # .4.0
SHARED_LIBS +=	kxmlrpcclient        0.0      # .4.0
SHARED_LIBS +=	syndication          0.0      # .1.0
SHARED_LIBS +=	gpgme++              2.4      # .1.0
SHARED_LIBS +=	gpgme++-pthread      2.4      # .1.0
SHARED_LIBS +=	kblog                4.0      # .4.0
SHARED_LIBS +=	kimap                4.0      # .4.0
SHARED_LIBS +=	kpimidentities       4.0      # .4.0
SHARED_LIBS +=	kpimutils            4.0      # .4.0
SHARED_LIBS +=	mailtransport        4.0      # .4.0
SHARED_LIBS +=	qgpgme               2.0      # .1.0
SHARED_LIBS +=	akonadi-contact	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kabc	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kcal	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kde	     0.0      # .4.4
SHARED_LIBS +=	akonadi-kmime	     0.0      # .4.4
SHARED_LIBS +=	akonadi-notes	     0.0      # 4.7
SHARED_LIBS +=	kholidays	     0.0      # .4.4
SHARED_LIBS +=	kontactinterface     0.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     0.0      # .4.4
SHARED_LIBS +=	microblog	     0.0      # .4.4

SHARED_LIBS +=  akonadi-calendar	0.0 # 4.7
SHARED_LIBS +=  kcalcore		0.0 # 4.7
SHARED_LIBS +=  kcalutils		0.0 # 4.7
SHARED_LIBS +=  kmbox			0.0 # 4.7

SHARED_LIBS +=  akonadi-socialutils	0.0 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += akonadiprotocolinternals assuan e2fs-uuid gpg-error gpgme
WANTLIB += gpgme-pthread ical icalss lber ldap prison qjson sasl2 soprano

MODULES =	devel/gettext multimedia/phonon

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

RUN_DEPENDS =	misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		databases/openldap \
		databases/soprano>=${MIN_SOPRANO_VERSION} \
		devel/qjson \
		graphics/prison \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		security/cyrus-sasl2 \
		security/gpgme>=0.4.5 \
		sysutils/e2fsprogs \
		textproc/libical

.include <bsd.port.mk>
