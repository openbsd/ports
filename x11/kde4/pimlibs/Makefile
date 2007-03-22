# $OpenBSD: Makefile,v 1.1.1.1 2007/03/22 22:24:32 espie Exp $

COMMENT=		"K Desktop Environment, pimlibs"
DISTNAME=		kdepimlibs-${VERSION}

LIB_DEPENDS+=	bz2::archivers/bzip2 \
	 	sasl2::security/cyrus-sasl2 \
		ldap,lber::databases/openldap

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml


.include <bsd.port.mk>
