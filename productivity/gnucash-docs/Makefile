# $OpenBSD: Makefile,v 1.5 2010/08/28 09:19:14 sthen Exp $

COMMENT =	gnucash documentation

GNOME_PROJECT =	gnucash-docs
GNOME_VERSION =	2.2.0
REVISION=	2

CATEGORIES =	productivity

HOMEPAGE =	http://www.gnucash.org/

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

CONFIGURE_STYLE =	gnu

PKG_ARCH =		*

.include <bsd.port.mk>
