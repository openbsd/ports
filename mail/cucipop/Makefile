# $OpenBSD: Makefile,v 1.11 2001/02/19 15:00:46 danh Exp $

DISTNAME=	cucipop-1.31
CATEGORIES=	mail
NEED_VERSION=	1.356
MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/cucipop/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=	cucipop-1.31-v6-20010128.diff.gz:0
PATCH_DIST_STRIP= -p1

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_ipv6
FLAVOR?=

.if ${FLAVOR:L:Mno_ipv6}
MAKE_FLAGS=	CFLAGS="${CFLAGS}" LDFLAGS=""
.else
MAKE_FLAGS=	CFLAGS="${CFLAGS} -DINET6" LDFLAGS=""
.endif

post-patch:
.for f in cucipop.8 makevpopdb.8
	@cd ${WRKSRC} && sed -e s#!!PREFIX!!#${PREFIX}#g ${f} > ${f}.new && \
		mv ${f}.new ${f}
.endfor

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} cucipop makevpopdb ${PREFIX}/libexec
	cd ${WRKSRC}; ${INSTALL_MAN} cucipop.8 makevpopdb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
