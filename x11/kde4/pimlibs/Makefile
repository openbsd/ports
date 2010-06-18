# $OpenBSD: Makefile,v 1.7 2010/06/18 11:50:29 espie Exp $

COMMENT =		K Desktop Environment, pimlibs
DISTNAME =		kdepimlibs-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	emailfunctions       0.0      # .4.0
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

# XXX bug in cmake ?
SHARED_LIBS += 	gpgmepp-pthread	     0.0      # .2.4
SHARED_LIBS += 	gpgmepp		     0.0      # .2.4


BUILD_DEPENDS += ::devel/boost \
		::x11/kde4/automoc
LIB_DEPENDS +=	kdecore.>=8,kdeui,kio,kparts,kutils,solid::x11/kde4/libs \
		sasl2::security/cyrus-sasl2 \
		ldap,lber::databases/openldap \
		gpgme,gpgme-pthread:gpgme->=0.4.5:security/gpgme \
		akonadiprotocolinternals::x11/kde4/akonadi \
		ical,icalss::textproc/libical

WANTLIB += c m pthread
WANTLIB += QtSql QtDBus QtGui QtSvg QtXml QtNetwork phonon
WANTLIB += gpg-error iconv intl
WANTLIB += stdc++


.include <bsd.port.mk>
