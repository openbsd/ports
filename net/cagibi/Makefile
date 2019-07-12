# $OpenBSD: Makefile,v 1.9 2019/07/12 21:07:46 sthen Exp $

CATEGORIES =	net
COMMENT =	SSDP cache/proxy daemon for KDE
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/cagibi
DISTNAME =	cagibi-0.2.0
REVISION =	5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/cagibi/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2+ and LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml m pthread
WANTLIB += ${LIBCXX}

MODULES =	x11/kde4
MODKDE4_USE =

RUN_DEPENDS =	net/avahi

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

MODKDE4_SYSCONF_FILES =	dbus-1		share/examples/kde \
			cagibid.conf	share/examples/kde

CONFIGURE_ARGS =	-DSYSCONF_INSTALL_DIR:String=${SYSCONFDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
