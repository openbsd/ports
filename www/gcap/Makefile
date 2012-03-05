# $OpenBSD: Makefile,v 1.1.1.1 2012/03/05 08:57:19 bentley Exp $

COMMENT =		Youtube closed caption downloader

DISTNAME =		gcap-0.1.1

CATEGORIES =		www

HOMEPAGE =		https://code.google.com/p/gcap/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		https://gcap.googlecode.com/files/

RUN_DEPENDS =		devel/p5-Getopt-ArgvFile \
			misc/p5-Umph-Prompt \
			textproc/p5-XML-DOM \
			www/p5-libwww

CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
