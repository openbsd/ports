# $OpenBSD: Makefile,v 1.4 2008/01/21 21:47:56 espie Exp $

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
SHARED_LIBS +=	gpgme++              4.0      # .1.0
SHARED_LIBS +=	gpgme++-pthread      0.0      # .1.0
SHARED_LIBS +=	kblog                4.0      # .4.0
SHARED_LIBS +=	kimap                4.0      # .4.0
SHARED_LIBS +=	kpimidentities       4.0      # .4.0
SHARED_LIBS +=	kpimutils            4.0      # .4.0
SHARED_LIBS +=	mailtransport        4.0      # .4.0
SHARED_LIBS +=	qgpgme               2.0      # .1.0

LIB_DEPENDS +=	kdecore.>=8,kdeui,kde3support,kfile,kio,kparts,kpty,solid::x11/kde4/libs \
		sasl2::security/cyrus-sasl2 \
		ldap,lber::databases/openldap \
		gpgme,gpgme-pthread:gpgme->=0.4.5:security/gpgme

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z bz2 Xfixes
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += fam glib-2.0 gpg-error gthread-2.0 iconv intl
WANTLIB += streamanalyzer streams


.include <bsd.port.mk>
