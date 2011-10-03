# $OpenBSD: Makefile,v 1.9 2011/10/03 06:42:46 ajacoutot Exp $

COMMENT =	japanese skk input engine for ibus

DISTNAME =	ibus-skk-1.3.9
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

BUILD_DEPENDS = devel/gettext
RUN_DEPENDS =	inputmethods/ibus \
		devel/gettext

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
