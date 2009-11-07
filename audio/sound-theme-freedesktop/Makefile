# $OpenBSD: Makefile,v 1.7 2009/11/07 19:36:28 ajacoutot Exp $

COMMENT=	XDG sound theme

DISTNAME=	sound-theme-freedesktop-0.7
CATEGORIES=	audio

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

BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		:automake->=${AUTOMAKE_VERSION},<1.10:devel/automake/${AUTOMAKE_VERSION}

# XXX needed for autoreconf:
# aclocal:configure.ac:17: warning: macro `AM_GLIB_GNU_GETTEXT' not found in library
BUILD_DEPENDS+= ::devel/glib2

USE_GMAKE=	Yes
NO_REGRESS=	Yes

AUTOMAKE_VERSION=1.9
AUTOCONF_VERSION=2.62

do-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		./autogen.sh \

.include <bsd.port.mk>
