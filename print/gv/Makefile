# $OpenBSD: Makefile,v 1.11 2000/03/18 22:35:13 espie Exp $

DISTNAME=	gv-3.5.8
CATEGORIES=	print
NEED_VERSION=	1.227
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/


MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Xaw3d.6.1:x11/Xaw3d
RUN_DEPENDS=	gs:print/ghostscript/gnu


FAKE=		Yes
USE_IMAKE=	Yes

INSTALL_TARGET=install install.man install.doc

.include <bsd.port.mk>
