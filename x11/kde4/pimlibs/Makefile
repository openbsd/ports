# $OpenBSD: Makefile,v 1.22 2013/08/24 17:33:52 zhuk Exp $

COMMENT =	libraries for KDE PIM services
DISTNAME =	kdepimlibs-${MODKDE4_VERSION}
REVISION =	0

DPB_PROPERTIES =	parallel

SHARED_LIBS =	kabc                 50.1      # .4.0
SHARED_LIBS +=	kabc_file_core       50.1      # .4.0
SHARED_LIBS +=	kalarmcal	     50.1      # 2.7
SHARED_LIBS +=	kcal                 50.1      # .4.0
SHARED_LIBS +=	kldap                50.1      # .4.0
SHARED_LIBS +=	kmime                50.1      # .4.0
SHARED_LIBS +=	kresources           50.1      # .4.0
SHARED_LIBS +=	ktnef                50.1      # .4.0
SHARED_LIBS +=	kxmlrpcclient        50.1      # .4.0
SHARED_LIBS +=	syndication          50.1      # .1.0
SHARED_LIBS +=	gpgme++              50.1      # .1.0
SHARED_LIBS +=	gpgme++-pthread      50.1      # .1.0
SHARED_LIBS +=	kblog                50.1      # .4.0
SHARED_LIBS +=	kimap                50.1      # .4.0
SHARED_LIBS +=	kpimidentities       50.1      # .4.0
SHARED_LIBS +=	kpimutils            50.1      # .4.0
SHARED_LIBS +=	mailtransport        50.1      # .4.0
SHARED_LIBS +=	qgpgme               50.1      # .1.0
SHARED_LIBS +=	akonadi-contact	     50.1      # .4.4
SHARED_LIBS +=	akonadi-kabc	     50.1      # .4.4
SHARED_LIBS +=	akonadi-kcal	     50.1      # .4.4
SHARED_LIBS +=	akonadi-kde	     50.1      # .4.4
SHARED_LIBS +=	akonadi-kmime	     50.1      # .4.4
SHARED_LIBS +=	akonadi-notes	     50.1      # 4.7
SHARED_LIBS +=	kholidays	     50.1      # .4.4
SHARED_LIBS +=	kontactinterface     50.1      # .4.4
SHARED_LIBS +=	kpimtextedit	     50.1      # .4.4
SHARED_LIBS +=	microblog	     50.1      # .4.4

SHARED_LIBS +=  akonadi-calendar	50.1 # 4.7
SHARED_LIBS +=  kcalcore		50.1 # 4.7
SHARED_LIBS +=  kcalutils		50.1 # 4.7
SHARED_LIBS +=  kmbox			50.1 # 4.7

SHARED_LIBS +=  akonadi-socialutils	50.1 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += akonadiprotocolinternals assuan uuid gpg-error gpgme
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
		sysutils/e2fsprogs>=1.42.7 \
		textproc/libical

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKDIST}/cmake/modules

.include <bsd.port.mk>
