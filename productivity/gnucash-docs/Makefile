# $OpenBSD: Makefile,v 1.2 2009/03/14 10:40:52 ajacoutot Exp $

COMMENT =	gnucash documentation

GNOME_PROJECT =	gnucash-docs
GNOME_VERSION =	2.2.0
PKGNAME =	${DISTNAME}p0

CATEGORIES =	productivity

HOMEPAGE =	http://www.gnucash.org/

MAINTAINER =	Nikolay Sturm <sturm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnucash/} \
		${HOMEPAGE}pub/gnucash/sources/stable/
EXTRACT_SUFX =	.tar.gz

MODULES =		x11/gnome
MODGNOME_HELP_FILES =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::textproc/rarian

CONFIGURE_STYLE =	gnu

PKG_ARCH =		*

.include <bsd.port.mk>
