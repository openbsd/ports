# $OpenBSD: Makefile,v 1.1.1.1 2009/08/20 20:58:14 landry Exp $

COMMENT =	Xfce4 developer tools and macros

XFCE_PROJECT =	xfce4-dev-tools
XFCE_VERSION =	4.7.0
HOMEPAGE =	http://foo-projects.org/~benny/projects/xfce4-dev-tools/

# GPLv2
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	x11/xfce4

RUN_DEPENDS =	::devel/libtool \
		::textproc/gtk-doc \
		::textproc/intltool \
		::devel/automake/${AUTOMAKE_VERSION} \
		::devel/autoconf/${AUTOCONF_VERSION} \
		::shells/bash \
		::devel/git \
		::devel/subversion

AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.61
SUBST_VARS+=	AUTOCONF_VERSION AUTOMAKE_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/xdt-autogen.in.in \
		${WRKSRC}/scripts/xdt-commit

.include <bsd.port.mk>
