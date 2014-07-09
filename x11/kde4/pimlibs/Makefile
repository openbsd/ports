# $OpenBSD: Makefile,v 1.29 2014/07/09 20:03:30 zhuk Exp $

COMMENT =	libraries for KDE PIM services
DISTNAME =	kdepimlibs-${MODKDE4_VERSION}

DPB_PROPERTIES =	parallel

SHARED_LIBS =	kabc                 52.0      # .4.0
SHARED_LIBS +=	kabc_file_core       52.0      # .4.0
SHARED_LIBS +=	kalarmcal	     52.0      # 2.7
SHARED_LIBS +=	kcal                 52.0      # .4.0
SHARED_LIBS +=	kldap                52.0      # .4.0
SHARED_LIBS +=	kmime                52.0      # .4.0
SHARED_LIBS +=	kresources           52.0      # .4.0
SHARED_LIBS +=	ktnef                52.0      # .4.0
SHARED_LIBS +=	kxmlrpcclient        52.0      # .4.0
SHARED_LIBS +=	syndication          52.0      # .1.0
SHARED_LIBS +=	gpgme++              51.0      # .1.0
SHARED_LIBS +=	gpgme++-pthread      51.0      # .1.0
SHARED_LIBS +=	kblog                52.0      # .4.0
SHARED_LIBS +=	kimap                52.0      # .4.0
SHARED_LIBS +=	kpimidentities       52.0      # .4.0
SHARED_LIBS +=	kpimutils            52.0      # .4.0
SHARED_LIBS +=	mailtransport        52.0      # .4.0
SHARED_LIBS +=	qgpgme               52.0      # .1.0
SHARED_LIBS +=	akonadi-contact	     52.0      # .4.4
SHARED_LIBS +=	akonadi-kabc	     52.0      # .4.4
SHARED_LIBS +=	akonadi-kcal	     52.0      # .4.4
SHARED_LIBS +=	akonadi-kde	     52.0      # .4.4
SHARED_LIBS +=	akonadi-kmime	     52.0      # .4.4
SHARED_LIBS +=	akonadi-notes	     52.0      # 4.7
SHARED_LIBS +=	kholidays	     52.0      # .4.4
SHARED_LIBS +=	kontactinterface     52.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     52.0      # .4.4
SHARED_LIBS +=	microblog	     52.0      # .4.4

SHARED_LIBS +=  akonadi-calendar	52.0 # 4.7
SHARED_LIBS +=  kcalcore		52.0 # 4.7
SHARED_LIBS +=  kcalutils		52.0 # 4.7
SHARED_LIBS +=  kmbox			52.0 # 4.7

SHARED_LIBS +=  akonadi-socialutils	52.0 # 4.10

SHARED_LIBS +=	akonadi-xml		0.0  # 4.13

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += akonadiprotocolinternals assuan uuid gpg-error gpgme
WANTLIB += gpgme-pthread ical icalss lber ldap prison qjson sasl2 soprano

MODULES =	devel/gettext multimedia/phonon

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

RUN_DEPENDS =	misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

LIB_DEPENDS =	databases/openldap \
		databases/soprano>=${MIN_SOPRANO_VERSION} \
		devel/qjson \
		graphics/prison \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		security/cyrus-sasl2 \
		security/gpgme>=0.4.5 \
		sysutils/e2fsprogs>=1.42.7 \
		textproc/libical

# XXX until all linking issues are resolved
NO_TEST =	Yes

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKDIST}/cmake/modules

.include <bsd.port.mk>


qwe:
.for _l _v in ${SHARED_LIBS}
	objdump -p /usr/local/lib/lib${_l}.so.${_v} | grep NEEDED
.endfor
