# $OpenBSD: Makefile,v 1.4 2004/05/07 02:07:31 dons Exp $

COMMENT=	"Haskell 98 interpreter"

V=		Nov2003
DISTNAME=	hugs98-${V}
CATEGORIES=	lang
MAINTAINER=	Don Stewart <dons@openbsd.org>
HOMEPAGE=	http://www.haskell.org/hugs/
MASTER_SITES=	http://cvs.haskell.org/Hugs/downloads/${V}/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/hugs98/

DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME}-regress.tar.bz2:0

CONFIGURE_STYLE=dest
CONFIGURE_ENV+=	CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=--with-pthreads --enable-ffi --libdir=${PREFIX}/share

WRKBUILD=	${WRKDIST}/src
ALL_TARGET=

do-configure:
	@(cd ${WRKBUILD}/unix && ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS})

do-regress:
	@(cd ${WRKDIST}/tests && sh testScript static tcheck rts libs ffi demos)

# BSDish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
