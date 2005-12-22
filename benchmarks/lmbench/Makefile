# $OpenBSD: Makefile,v 1.20 2005/12/22 22:38:52 sturm Exp $

COMMENT=	"system performance measurement"
DISTNAME=	lmbench
PKGNAME=	lmbench-1.1
CATEGORIES=	benchmarks

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

# this is the new home site
#
MASTER_SITES=	ftp://ftp.bitmover.com/lmbench/
EXTRACT_SUFX=	.tar.Z

ALL_TARGET=	build
MAKE_ENV=	PATH=${PATH}:${WRKSRC}/scripts

MAN1=	bargraph.1 graph.1
MAN8=	lmbench.8 lat_proc.8 lat_mmap.8 lat_ctx.8 lat_syscall.8 lat_pipe.8 \
	lat_tcp.8 lat_udp.8 lat_rpc.8 lat_connect.8 lat_fs.8 lat_pagefault.8 \
	lat_mem_rd.8 bw_file_rd.8 bw_mem_cp.8 bw_mem_rd.8 bw_mem_wr.8 \
	bw_mmap_rd.8 bw_pipe.8 bw_tcp.8 mhz.8 lmdd.8

NO_REGRESS=	Yes

test: build
	@cd ${WRKSRC}; make results

retest: build
	@cd ${WRKSRC}; make rerun

# This package comes with its own RCS directory which confuses patch.
# Move it so patch doesn't get confused.
#
pre-patch:
	@mv ${WRKSRC}/src/RCS ${WRKSRC}/src/RCS-

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lmbench

do-install:
	rm -rf ${WRKSRC}/{Results/RCS,doc/RCS,scripts/RCS,RCS}
	cp ${FILESDIR}/Makefile ${PREFIX}/lib/lmbench
	tar -C ${WRKSRC} -cf - Results bin scripts | \
	  tar -C ${PREFIX}/lib/lmbench -xf -
.for man in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man1
.endfor
.for man in ${MAN8}
	${INSTALL_MAN} ${WRKSRC}/doc/${man} ${PREFIX}/man/man8
.endfor

# Fix packaging for non-root
post-install:
	@chmod -R a+rX ${PREFIX}/lib/lmbench

.include <bsd.port.mk>
