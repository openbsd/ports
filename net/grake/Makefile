# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:47 espie Exp $

COMMENT =		tool for scanning webpages for Youtube links

DISTNAME =		grake-0.1.0
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/grake/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		https://grake.googlecode.com/files/

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
