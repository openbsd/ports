# $OpenBSD: Makefile,v 1.15 2001/04/01 17:04:06 espie Exp $

DISTNAME=	gv-3.5.8
CATEGORIES=	print
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	gs:ghostscript-*:print/ghostscript/gnu


CONFIGURE_STYLE=	imake

INSTALL_TARGET=install install.man install.doc

.include <bsd.port.mk>
