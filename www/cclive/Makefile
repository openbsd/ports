# $OpenBSD: Makefile,v 1.8 2013/09/27 13:47:35 ajacoutot Exp $

COMMENT =		media download tool

DISTNAME =		cclive-0.9.2
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt c crypto curl
WANTLIB += ffi gcrypt glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error idn lua5.1 m pcre pcrecpp proxy pthread quvi-0.9
WANTLIB += sigc-2.0 ssl stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

MODULES =		devel/gettext

USE_GROFF =		Yes

LIB_DEPENDS =		devel/boost \
			devel/glib2mm \
			devel/pcre \
			net/quvi/libquvi>=0.9.3

RUN_DEPENDS =		net/luasocket

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
