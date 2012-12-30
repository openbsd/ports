# $OpenBSD: Makefile,v 1.11 2012/12/30 16:09:33 landry Exp $

COMMENT =	Xfce4 developer tools and macros

XFCE_PROJECT =	xfce4-dev-tools
HOMEPAGE =	http://foo-projects.org/~benny/projects/xfce4-dev-tools/
REVISION=	1

# GPLv2
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	x11/xfce4

RUN_DEPENDS =	devel/libtool \
		textproc/gtk-doc \
		textproc/intltool \
		devel/automake/${AUTOMAKE_VERSION} \
		devel/autoconf/${AUTOCONF_VERSION} \
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
