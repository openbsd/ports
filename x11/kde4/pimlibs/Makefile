# $OpenBSD: Makefile,v 1.28 2014/01/16 09:15:49 zhuk Exp $

COMMENT =	libraries for KDE PIM services
DISTNAME =	kdepimlibs-${MODKDE4_VERSION}
REVISION =	0

DPB_PROPERTIES =	parallel

SHARED_LIBS =	kabc                 51.0      # .4.0
SHARED_LIBS +=	kabc_file_core       51.0      # .4.0
SHARED_LIBS +=	kalarmcal	     51.0      # 2.7
SHARED_LIBS +=	kcal                 51.0      # .4.0
SHARED_LIBS +=	kldap                51.0      # .4.0
SHARED_LIBS +=	kmime                51.0      # .4.0
SHARED_LIBS +=	kresources           51.0      # .4.0
SHARED_LIBS +=	ktnef                51.0      # .4.0
SHARED_LIBS +=	kxmlrpcclient        51.0      # .4.0
SHARED_LIBS +=	syndication          51.0      # .1.0
SHARED_LIBS +=	gpgme++              51.0      # .1.0
SHARED_LIBS +=	gpgme++-pthread      51.0      # .1.0
SHARED_LIBS +=	kblog                51.0      # .4.0
SHARED_LIBS +=	kimap                51.0      # .4.0
SHARED_LIBS +=	kpimidentities       51.0      # .4.0
SHARED_LIBS +=	kpimutils            51.0      # .4.0
SHARED_LIBS +=	mailtransport        51.0      # .4.0
SHARED_LIBS +=	qgpgme               51.0      # .1.0
SHARED_LIBS +=	akonadi-contact	     51.0      # .4.4
SHARED_LIBS +=	akonadi-kabc	     51.0      # .4.4
SHARED_LIBS +=	akonadi-kcal	     51.0      # .4.4
SHARED_LIBS +=	akonadi-kde	     51.0      # .4.4
SHARED_LIBS +=	akonadi-kmime	     51.0      # .4.4
SHARED_LIBS +=	akonadi-notes	     51.0      # 4.7
SHARED_LIBS +=	kholidays	     51.0      # .4.4
SHARED_LIBS +=	kontactinterface     51.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     51.0      # .4.4
SHARED_LIBS +=	microblog	     51.0      # .4.4

SHARED_LIBS +=  akonadi-calendar	51.0 # 4.7
SHARED_LIBS +=  kcalcore		51.0 # 4.7
SHARED_LIBS +=  kcalutils		51.0 # 4.7
SHARED_LIBS +=  kmbox			51.0 # 4.7

SHARED_LIBS +=  akonadi-socialutils	51.0 # 4.10

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
