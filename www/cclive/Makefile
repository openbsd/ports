# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:41 espie Exp $

COMMENT =		media download tool

DISTNAME =		cclive-0.7.11
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c crypto m ssl stdc++ z lua5.1 curl idn quvi
WANTLIB +=		boost_date_time-mt boost_filesystem-mt 
WANTLIB +=		boost_iostreams-mt boost_program_options-mt
WANTLIB +=		boost_system-mt pcre pcrecpp pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

MODULES =		devel/gettext

LIB_DEPENDS =		devel/boost \
			devel/pcre \
			net/quvi/libquvi

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
