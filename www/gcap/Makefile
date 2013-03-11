# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:42 espie Exp $

COMMENT =		Youtube closed caption downloader

DISTNAME =		gcap-0.1.1

CATEGORIES =		www

HOMEPAGE =		https://code.google.com/p/gcap/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		https://gcap.googlecode.com/files/

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			textproc/p5-XML-DOM \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
