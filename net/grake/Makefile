# $OpenBSD: Makefile,v 1.4 2016/10/01 11:54:16 naddy Exp $

COMMENT =		tool for scanning webpages for Youtube links

DISTNAME =		grake-0.1.0
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/grake/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=grake/}

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
