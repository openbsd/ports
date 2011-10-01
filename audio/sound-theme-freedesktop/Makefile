# $OpenBSD: Makefile,v 1.12 2011/10/01 10:03:02 ajacoutot Exp $

COMMENT=	XDG sound theme

DISTNAME=	sound-theme-freedesktop-0.7
CATEGORIES=	audio

REVISION=	1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://freedesktop.org/wiki/Specifications/sound-theme-spec

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - GPLv2
# CC-SAv2.0 - CC-Av3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cgit.freedesktop.org/sound-theme-freedesktop/snapshot/

MODULES=	textproc/intltool

BUILD_DEPENDS=	devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION}

# XXX needed for autoreconf:
# aclocal:configure.ac:17: warning: macro `AM_GLIB_GNU_GETTEXT' not found in library
BUILD_DEPENDS+= devel/glib2

USE_GMAKE=	Yes
NO_REGRESS=	Yes

AUTOMAKE_VERSION=1.9
AUTOCONF_VERSION=2.62

CONFIGURE_STYLE=gnu

do-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		./autogen.sh ${CONFIGURE_ARGS}

post-install:
	cd ${PREFIX}/share/sounds/freedesktop/stereo && \
		ln -sf service-login.oga desktop-login.oga && \
		ln -sf service-logout.oga desktop-logout.oga

.include <bsd.port.mk>
