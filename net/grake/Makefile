# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:27 sthen Exp $

COMMENT =		tool for scanning webpages for Youtube links

DISTNAME =		grake-0.1.0
REVISION =		1

CATEGORIES =		net

# GPLv3+
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=grake/}

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			www/p5-CGI \
			www/p5-libwww \
			www/p5-LWP-Protocol-https

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
