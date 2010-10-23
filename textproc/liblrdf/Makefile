# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 16:54:23 jakemsr Exp $

COMMENT =		light RDF manipulation with LADSPA plugin support
DISTNAME =		liblrdf-0.4.0

SHARED_LIBS =		lrdf	0.0	# 0.0

CATEGORIES =		textproc

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		crypto curl idn m raptor ssl xml2 xslt z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lrdf/}

MODULES =		devel/gettext

BUILD_DEPENDS =		::audio/ladspa
LIB_DEPENDS =		::textproc/raptor

USE_LIBTOOL =		yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
