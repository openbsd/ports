# $OpenBSD: Makefile,v 1.6 2013/09/19 23:05:50 bentley Exp $

COMMENT =		media download tool

DISTNAME =		cclive-0.7.16
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m ssl stdc++ z lua5.1 curl idn quvi
WANTLIB +=		boost_date_time-mt boost_filesystem-mt 
WANTLIB +=		boost_iostreams-mt boost_program_options-mt
WANTLIB +=		boost_system-mt pcre pcrecpp pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

MODULES =		devel/gettext

USE_GROFF =		Yes

LIB_DEPENDS =		devel/boost \
			devel/pcre \
			net/quvi/libquvi

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
