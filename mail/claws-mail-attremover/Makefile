# $OpenBSD: Makefile,v 1.1.1.1 2010/05/25 12:17:01 stephan Exp $

SHARED_ONLY =	Yes

COMMENT =	remove attachments from emails

VERSION =	1.0.11
DISTNAME =	att_remover-${VERSION}
PKGNAME =	claws-mail-attremover-${VERSION}
MASTER_SITES =	http://www.claws-mail.org/downloads/plugins/
CATEGORIES =	mail
DIST_SUBDIR =	claws

HOMEPAGE =	http://www.claws-mail.org/plugins.php
MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes


USE_X11 =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

MODULES =	devel/gettext

RUN_DEPENDS =	:claws-mail->=3.7.4:mail/claws-mail
BUILD_DEPENDS =	${RUN_DEPENDS}

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes z \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glitz m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs xcb xcb-render xcb-render-util

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--disable-static

.include <bsd.port.mk>
