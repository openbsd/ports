# $OpenBSD: Makefile,v 1.4 2002/04/27 23:54:32 espie Exp $

CATEGORIES=x11
NEED_VERSION=1.515

ONLY_FOR_ARCHS=	i386
COMMENT='ATI drivers with full xvideo support'
DISTNAME=ATI-4.2.0-6.i386
PKGNAME=ATI-4.2.0.6
MASTER_SITES=http://prdownloads.sourceforge.net/gatos/

PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

EXTRACT_ONLY=

NO_BUILD=

do-install:
	cd ${PREFIX} && tar -zxv -s ,X11R6/lib,lib/X11, -f ${FULLDISTDIR}/${DISTNAME}.tar.gz

SUBST_VARS=X11BASE

.include <bsd.port.mk>
