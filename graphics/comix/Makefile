# $OpenBSD: Makefile,v 1.2 2007/05/06 22:35:55 alek Exp $

COMMENT=	"gtk2 comic book viewer"

DISTNAME=	comix-3.6.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=comix/}

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::graphics/py-Imaging \
		::x11/py-gtk2 

NO_REGRESS=	Yes

PYTHON=		${LOCALBASE}/bin/python${MODPY_VERSION}

do-build:
		# defined as empty to override do-build target from python module

do-install:
		cd ${WRKSRC} && ${MODPY_BIN} install.py --installdir ${PREFIX} \
		       	--no-mime --no-balloon install
		perl -pi -e "s,#!/usr/bin/env python,#!${MODPY_BIN}," \
			${PREFIX}/bin/comix

PKG_ARCH=	*

.include <bsd.port.mk>
