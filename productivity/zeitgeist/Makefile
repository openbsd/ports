# $OpenBSD: Makefile,v 1.2 2012/09/29 12:00:59 ajacoutot Exp $

COMMENT =		event logging framework

V =			0.8.2
DISTNAME =		zeitgeist-${V}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		http://launchpad.net/zeitgeist/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://edge.launchpad.net/zeitgeist/${V:R}/${V}/+download/

MODULES =		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS =		textproc/p5-XML-Parser \
			textproc/py-rdflib \
			textproc/raptor \

RUN_DEPENDS =		databases/py-sqlite2 \
			devel/py-gobject \
			devel/py-xdg \
			x11/dbus-python \

CONFIGURE_STYLE =	gnu

MODPY_ADJ_FILES =	zeitgeist-daemon \
			zeitgeist-daemon.py \
			extra/rdfxml2py

.include <bsd.port.mk>
