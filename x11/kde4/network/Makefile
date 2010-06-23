# $OpenBSD: Makefile,v 1.7 2010/06/23 13:11:34 espie Exp $

COMMENT =		K Desktop Environment, network
DISTNAME =		kdenetwork-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=  kgetcore                0.0 # .4.0
SHARED_LIBS +=  kopete                  3.0 # .4.0
SHARED_LIBS +=  kopete_videodevice      2.0 # .4.0
SHARED_LIBS +=  kopeteaddaccountwizard  0.0 # .1.0
SHARED_LIBS +=  kopetechatwindow_shared 0.0 # .1.0
SHARED_LIBS +=  kopeteidentity          0.0 # .1.0
SHARED_LIBS +=  kopeteprivacy           0.0 # .1.0
SHARED_LIBS +=  kyahoo                  0.0 # .1.0
SHARED_LIBS +=  oscar                   0.0 # .1.0
SHARED_LIBS +=	kopete_oscar		0.0 # .4.4
SHARED_LIBS +=	kopete_otr_shared	0.0 # .1.0
SHARED_LIBS +=	kopetecontactlist	0.0 # .1.0
SHARED_LIBS +=	kopetestatusmenu	0.0 # .1.0
SHARED_LIBS +=	krdccore		0.0 # .4.4

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,kfile,phonon,solid,kdnssd,knewstuff2,krosscore,krossui,nepomuk::x11/kde4/libs \
		kabc.>=5,kresources,gpgme++-pthread,kpimidentities,qgpgme::x11/kde4/pimlibs \
		plasma,kworkspace::x11/kde4/base-workspace \
		xmms::audio/xmms \
		qca.>=3::security/qca2 \
		gadu::net/libgadu \
		gmp::devel/gmp \
		otr::security/libotr \
		meanwhile::net/meanwhile

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += c m
WANTLIB += pthread stdc++ z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork QtSql QtTest QtScript
WANTLIB += Xss iconv intl
WANTLIB += xml2 xslt glib-2.0
WANTLIB += qimageblitz idn soprano
WANTLIB += gpg-error gpgme-pthread


CONFIGURE_ARGS += -DQCA2_INCLUDE_DIR:PATH=${LOCALBASE}/include/QtCrypto
CONFIGURE_ARGS += -DQCA2_DEFINITIONS:STRING=-DQT_SHARED
CONFIGURE_ARGS += -DQCA2_LIBRARIES:FILEPATH=${LOCALBASE}/lib/libqca.so.3.0
CONFIGURE_ARGS += -DQCA2_FOUND:BOOL=true

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
