# $OpenBSD: Makefile,v 1.1.1.1 2001/10/14 15:28:29 espie Exp $

CATEGORIES=x11
NEED_VERSION=1.474

ONLY_FOR_ARCHS=	i386
COMMENT='ATI drivers with full xvideo support'
DISTNAME=ATI-4.1.0.i386
MASTER_SITES=http://www.linuxvideo.org/gatos/

PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

EXTRACT_ONLY=

NO_BUILD=

do-install:
	cd ${PREFIX} && tar -zxv -s ,X11R6/lib,lib/X11, -f ${FULLDISTDIR}/${DISTNAME}.tar.gz

.include <bsd.port.mk>
