# $OpenBSD: Makefile,v 1.7 2000/02/11 01:10:00 espie Exp $

DISTNAME=	lmbench
PKGNAME=	lmbench-1.1
CATEGORIES=	benchmarks

BROKEN=	"version changed; different distributions/directories"
MAINTAINER=	ports@openbsd.org

# this is the new home site
#
MASTER_SITES=	ftp://ftp.bitmover.com/lmbench/
EXTRACT_SUFX=	.tar.Z

ALL_TARGET=	build
MAKE_ENV=	PATH=${PATH}:${WRKSRC}/scripts

test: build
	@(cd ${WRKSRC}; make results)

retest: build
	@(cd ${WRKSRC}; make rerun)

# This package comes with its own RCS directory which confuses patch.
# Move it so patch doesn't get confused.
#
pre-patch:
	@mv ${WRKSRC}/src/RCS ${WRKSRC}/src/RCS-

pre-install:
	[ -d ${PREFIX}/lib/lmbench ] || mkdir -p ${PREFIX}/lib/lmbench

do-install:
	cp ${FILESDIR}/Makefile ${PREFIX}/lib/lmbench
	tar -C ${WRKSRC} -cf - Results bin scripts | \
	  tar -C ${PREFIX}/lib/lmbench -xf -
.for man in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man1
.endfor
.for man in ${MAN8}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man8
.endfor

.include <bsd.port.mk>
