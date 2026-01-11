COMMENT =		user documentation module for GnuCash

GNOME_PROJECT =		gnucash-docs
GNOME_VERSION =		5.14
EXTRACT_SUFX =		.tar.gz
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		https://www.gnucash.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# GFDL 1.1
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=gnucash/}

MODULES =		devel/cmake \
			x11/gnome

BUILD_DEPENDS =		shells/bash

MODGNOME_TOOLS =	yelp
# XXX yelp will only be added to RDEP if desktop-file-utils is also a BDEP;
# this is to make sure the dependency is only added for GUI applications;
# since this is not the case here, add an explicit dependency as gnucash-docs
# only really makes sense if gnucash is installed
RUN_DEPENDS +=		x11/gnome/yelp

PKG_ARCH =		*

.include <bsd.port.mk>
