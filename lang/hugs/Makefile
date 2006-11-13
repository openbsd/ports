# $OpenBSD: Makefile,v 1.12 2006/11/13 11:20:25 steven Exp $

COMMENT=	"Haskell 98 interpreter"

V=		Mar2005
DISTNAME=	hugs98-${V}
PKGNAME=	hugs98-2005.03
CATEGORIES=	lang
MAINTAINER=	Don Stewart <dons@openbsd.org>
HOMEPAGE=	http://www.haskell.org/hugs/

MASTER_SITES=	http://cvs.haskell.org/Hugs/downloads/${V}/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/hugs98/

DISTFILES=	${DISTNAME}-patched.tar.gz ${DISTNAME}-regress.tar.bz2:0
WRKDIST=	${WRKDIR}/${DISTNAME}-patched

.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
CFLAGS+=    -fPIC
.endif

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="${CFLAGS}" CC="${CC}"
CONFIGURE_ARGS+=--with-pthreads --libdir=${PREFIX}/lib

do-regress:
	@cd ${WRKDIST}/tests && sh testScript static tcheck rts libs ffi

# BSDish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline GL X11 GLU

.include <bsd.port.mk>
