# $OpenBSD: Makefile,v 1.7 2021/10/09 05:58:17 ajacoutot Exp $

COMMENT =		user documentation module for GnuCash

GNOME_PROJECT =		gnucash-docs
GNOME_VERSION =		4.8
EXTRACT_SUFX =		.tar.gz

CATEGORIES =		productivity

HOMEPAGE =		https://www.gnucash.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# GFDL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnucash/}

MODULES =		devel/cmake \
			x11/gnome

MODGNOME_TOOLS =	yelp

PKG_ARCH=		*

.include <bsd.port.mk>
