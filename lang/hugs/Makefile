# $OpenBSD: Makefile,v 1.6 2004/09/15 19:15:12 espie Exp $

COMMENT=	"Haskell 98 interpreter"

V=		Nov2003
DISTNAME=	hugs98-${V}
CATEGORIES=	lang
MAINTAINER=	Don Stewart <dons@openbsd.org>
HOMEPAGE=	http://www.haskell.org/hugs/
MASTER_SITES=	http://cvs.haskell.org/Hugs/downloads/${V}/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/hugs98/

DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME}-regress.tar.bz2:0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="${CFLAGS}" CC="${CC}"
CONFIGURE_ARGS+=--with-pthreads --disable-ffi --libdir=${PREFIX}/share

WRKBUILD=	${WRKDIST}/src
WRKCONF=	${WRKBUILD}/unix
ALL_TARGET=

CONFIG_SITE=
do-regress:
	@cd ${WRKDIST}/tests && sh testScript static tcheck rts libs

# BSDish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
