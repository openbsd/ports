# $OpenBSD: Makefile,v 1.8 2013/01/30 16:12:36 bcallah Exp $

COMMENT=		GTK2 terminal emulator with split-window and tabs support

MODPY_EGG_VERSION=	0.96
DISTNAME=		terminator-${MODPY_EGG_VERSION}

CATEGORIES=		x11

HOMEPAGE=		http://www.tenshu.net/terminator/

MAINTAINER=		Juan Francisco Cantero Hurtado <iam@juanfra.info>

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
			devel/desktop-file-utils \
			x11/gtk+2,-guic \
			x11/keybinder,-python

NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes
MODPY_SETUP=		setup.py --without-icon-cache
# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL=install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
