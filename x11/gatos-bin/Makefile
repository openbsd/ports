# $OpenBSD: Makefile,v 1.11 2007/09/15 20:04:20 merdely Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

COMMENT=	ATI drivers with full xvideo support

DISTNAME=	ATI-4.3.0-9.i386
PKGNAME=	ATI-4.3.0.9
CATEGORIES=	x11

PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gatos/}
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${PREFIX} && tar -zxv -s ,X11R6/lib,lib/X11, \
		-f ${FULLDISTDIR}/${DISTNAME}.tar.gz

SUBST_VARS=	X11BASE

.include <bsd.port.mk>
