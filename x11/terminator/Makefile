# $OpenBSD: Makefile,v 1.5 2011/09/26 14:30:29 jasper Exp $

COMMENT=		GTK2 terminal emulator with split-window and tabs support

MODPY_EGG_VERSION=	0.95
DISTNAME=		terminator-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		x11

HOMEPAGE=		http://www.tenshu.net/terminator/

MAINTAINER=		Jochem Kossen <jochem@jkossen.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://launchpad.net/terminator/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python \
			textproc/intltool
RUN_DEPENDS=		devel/vte,-python \
			devel/py-notify \
			devel/desktop-file-utils

NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setup.py --without-icon-cache
# --single-version-externally-managed option used by MODPY doesn't exist (from audio/picard)
MODPY_DISTUTILS_INSTALL=install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
