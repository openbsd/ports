# $OpenBSD: Makefile,v 1.14 2000/10/22 15:43:17 espie Exp $

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
RUN_DEPENDS=	gs::print/ghostscript/gnu


CONFIGURE_STYLE=	imake

INSTALL_TARGET=install install.man install.doc

.include <bsd.port.mk>
