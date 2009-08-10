# $OpenBSD: Makefile,v 1.15 2009/08/10 17:31:07 kili Exp $

COMMENT =	Haskell 98 interpreter

DISTNAME =	hugs98-plus-Sep2006
PKGNAME =	hugs98-2006.09p0
CATEGORIES =	lang
MAINTAINER =	Matthias Kilian <kili@openbsd.org>
HOMEPAGE =	http://www.haskell.org/hugs/

MASTER_SITES =	http://cvs.haskell.org/Hugs/downloads/2006-09/
MASTER_SITES0 =	http://openbsd.dead-parrot.de/distfiles/

DISTFILES +=	${DISTNAME}.tar.gz ${DISTNAME}-tests.tar.gz:0

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
CFLAGS +=	-fPIC
.endif

USE_X11 =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" CC="${CC}"
CONFIGURE_ARGS +=	--with-pthreads --libdir=${PREFIX}/lib

# BSDish
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		GL GLU X11 c m ncurses pthread-stubs readline xcb

.include <bsd.port.mk>
