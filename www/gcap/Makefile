# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:46 sthen Exp $

COMMENT =		Youtube closed caption downloader

DISTNAME =		gcap-0.1.1

CATEGORIES =		www

HOMEPAGE =		https://code.google.com/p/gcap/

# GPLv3+
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=gcap/}

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			textproc/p5-XML-DOM \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
