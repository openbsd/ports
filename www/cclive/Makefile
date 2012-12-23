# $OpenBSD: Makefile,v 1.4 2012/12/23 03:28:44 bentley Exp $

COMMENT =		media download tool

DISTNAME =		cclive-0.7.11
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

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
