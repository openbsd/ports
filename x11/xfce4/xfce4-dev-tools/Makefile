# $OpenBSD: Makefile,v 1.14 2013/05/31 19:15:31 landry Exp $

COMMENT =	Xfce4 developer tools and macros

XFCE_VERSION =	4.10.0
XFCE_PROJECT =	xfce4-dev-tools
HOMEPAGE =	http://foo-projects.org/~benny/projects/xfce4-dev-tools/
REVISION=	2

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4

RUN_DEPENDS =	devel/libtool \
		textproc/gtk-doc \
		textproc/intltool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		shells/bash \
		devel/git \
		devel/subversion

AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.61
LIB_DEPENDS =	devel/glib2
WANTLIB = c glib-2.0 pcre pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/xdt-commit

.include <bsd.port.mk>
