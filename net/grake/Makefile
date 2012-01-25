# $OpenBSD: Makefile,v 1.2 2012/01/25 20:49:49 sthen Exp $

COMMENT =		tool for scanning webpages for Youtube links

DISTNAME =		grake-0.1.0
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/grake/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		https://grake.googlecode.com/files/

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
