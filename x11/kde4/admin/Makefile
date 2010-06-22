# $OpenBSD: Makefile,v 1.5 2010/06/22 23:31:55 espie Exp $

COMMENT =		K Desktop Environment, admin tools
DISTNAME =		kdeadmin-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS += 	kdecore.>=8,kde3support,kdeui,kio,kntlm::x11/kde4/libs \
		kldap::x11/kde4/pimlibs
		
# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


WANTLIB += c m pthread
WANTLIB += stdc++
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork


.include <bsd.port.mk>
