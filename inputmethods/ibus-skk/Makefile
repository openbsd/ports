# $OpenBSD: Makefile,v 1.5 2011/06/08 17:35:44 jasper Exp $

COMMENT =	japanese skk input engine for ibus

DISTNAME =	ibus-skk-1.3.5
REVISION =	0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	http://github.com/ueno/ibus-skk/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://cloud.github.com/downloads/ueno/ibus-skk/

MODULES =	lang/python \
		textproc/intltool

RUN_DEPENDS =	inputmethods/ibus

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		DATADIRNAME=share

.include <bsd.port.mk>
