# $OpenBSD: Makefile,v 1.5 1999/04/01 02:57:54 brad Exp $

DISTNAME=	lmbench
PKGNAME=	lmbench-1.1
CATEGORIES=	benchmarks

#BROKEN=	"version changed; home site moved"

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
	@${MV} ${WRKSRC}/src/RCS ${WRKSRC}/src/RCS-

pre-install:
	[ -d ${PREFIX}/lib/lmbench ] || ${MKDIR} ${PREFIX}/lib/lmbench

do-install:
	${CP} ${FILESDIR}/Makefile ${PREFIX}/lib/lmbench
	tar -C ${WRKSRC} -cf - Results bin scripts | \
	  tar -C ${PREFIX}/lib/lmbench -xf -
.for man in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man1
.endfor
.for man in ${MAN8}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man8
.endfor

.include <bsd.port.mk>
