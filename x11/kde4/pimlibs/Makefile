# $OpenBSD: Makefile,v 1.13 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, pimlibs
DISTNAME =		kdepimlibs-${VERSION}
REVISION =		0

SHARED_LIBS +=	kabc                 5.0      # .4.0
SHARED_LIBS +=	kabc_file_core       0.0      # .4.0
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
SHARED_LIBS +=	kholidays	     0.0      # .4.4
SHARED_LIBS +=	kontactinterface     0.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     0.0      # .4.4
SHARED_LIBS += 	gpgme++-pthread	     0.0      # .2.4
SHARED_LIBS += 	gpgme++		     0.0      # .2.4
SHARED_LIBS +=	microblog	     0.0      # .4.4

# XXX bug in cmake, remove after cmake 2.8.2
SHARED_LIBS += 	gpgmepp-pthread	     0.0      # .2.4
SHARED_LIBS += 	gpgmepp		     0.0      # .2.4

MODULES =	devel/gettext

BUILD_DEPENDS += devel/boost \
		devel/automoc
LIB_DEPENDS +=	x11/kde4/libs \
		security/cyrus-sasl2 \
		databases/openldap \
		security/gpgme>=0.4.5 \
		x11/kde4/akonadi \
		textproc/libical

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

WANTLIB += akonadiprotocolinternals c gpg-error gpgme gpgme-pthread ical \
	icalss kdecore.>=8 kdeui kio kparts kutils lber ldap \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql \
	lib/qt4/QtSvg lib/qt4/QtXml m phonon pthread sasl2 solid stdc++


.include <bsd.port.mk>
