# $OpenBSD: Makefile,v 1.2 2000/09/23 12:38:21 naddy Exp $

DISTNAME=	elvis-2.1_4
PKGNAME=	${DISTNAME:S/_/./}
CATEGORIES=	editors
NEED_VERSION=	1.303

HOMEPAGE=	http://www.fh-wedel.de/elvis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

MASTER_SITES=	ftp://ftp.cs.pdx.edu/pub/elvis/ \
		ftp://ftp.fh-wedel.de/pub/elvis/

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--bindir=${PREFIX}/bin --datadir=${PREFIX}/share/elvis
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-x=no
.else
CONFIGURE_ARGS+= --with-x --x-includes=${X11BASE}/include \
		 --x-libraries=${X11BASE}/lib
USE_X11=	Yes
.endif

do-install:
.for prog in elvis elvtags ref
	${INSTALL_PROGRAM} ${WRKSRC}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lib/${prog}.man ${PREFIX}/man/man1/${prog}.1
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/elvis
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/share/elvis

.include <bsd.port.mk>
