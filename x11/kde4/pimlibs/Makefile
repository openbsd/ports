# $OpenBSD: Makefile,v 1.2 2007/03/27 11:11:40 espie Exp $

COMMENT=		"K Desktop Environment, pimlibs"
DISTNAME=		kdepimlibs-${VERSION}
PKGNAME=		${DISTNAME}p0

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

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdesu,kdeui,kio,kparts,kutils,kwalletclient::x11/kde4/libs \
		sasl2::security/cyrus-sasl2 \
		ldap,lber::databases/openldap

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z bz2
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml


.include <bsd.port.mk>
