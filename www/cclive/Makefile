# $OpenBSD: Makefile,v 1.3 2012/09/28 00:07:13 sthen Exp $

COMMENT =		media download tool

DISTNAME =		cclive-0.7.10
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += c crypto m ssl stdc++ z lua5.1 curl idn quvi
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt pcre pcrecpp

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

MODULES =		devel/gettext

LIB_DEPENDS =		devel/boost \
			devel/pcre \
			net/quvi/libquvi

CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
