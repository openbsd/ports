# $OpenBSD: Makefile,v 1.1.1.1 2011/04/01 11:29:26 ajacoutot Exp $

COMMENT=	nagios status monitor for the Desktop

MODPY_EGG_VERSION= 0.9.4
DISTNAME=	nagstamon_${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/_/-/}

CATEGORIES=	x11 net/nagios

HOMEPAGE=	http://nagstamon.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagstamon/}

PKG_ARCH=	*

MODULES=	lang/python

RUN_DEPENDS=	textproc/py-lxml \
		x11/py-gtk2 \
		audio/sox

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Nagstamon/nagstamonConfig.py

.include <bsd.port.mk>
