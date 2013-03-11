# $OpenBSD: Makefile,v 1.24 2013/03/11 11:23:50 espie Exp $

COMMENT=	Cubic Circle's POP3 daemon

DISTNAME=	cucipop-1.31
REVISION=	0
CATEGORIES=	mail

MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/cucipop/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=	cucipop-1.31-v6-20010223.diff.gz:0
PATCH_DIST_STRIP= -p1

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CFLAGS="${CFLAGS} -DINET6" LDFLAGS="" MD5_OBJ=""
USE_GROFF =	Yes

pre-configure:
.for f in cucipop.8 makevpopdb.8
	@cd ${WRKSRC} && sed -e s#!!PREFIX!!#${PREFIX}#g ${f} > ${f}.new && \
		mv ${f}.new ${f}
.endfor

NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} cucipop makevpopdb ${PREFIX}/libexec
	cd ${WRKSRC}; ${INSTALL_MAN} cucipop.8 makevpopdb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
