# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:42 espie Exp $

COMMENT =		light RDF manipulation with LADSPA plugin support

DISTNAME =		LRDF-0.5.0
PKGNAME =		lib${DISTNAME:L}
REVISION =		0
CATEGORIES =		textproc

SHARED_LIBS =		lrdf	1.0	# 0.0

HOMEPAGE =		http://github.com/swh/LRDF/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto curl idn m raptor2 ssl xml2 xslt yajl z

MASTER_SITES =		http://spacehopper.org/mirrors/
MODULES =		devel/gettext

BUILD_DEPENDS =		audio/ladspa \
			devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		devel/libyajl \
			textproc/raptor

USE_LIBTOOL =		Yes
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	audio/swh-plugins

post-patch:
	@cd ${WRKBUILD} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
