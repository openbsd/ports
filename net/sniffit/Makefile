# $OpenBSD: Makefile,v 1.16 2006/02/05 00:31:32 steven Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/04/04 04:58:25 obrien Exp $

.if ${MACHINE_ARCH} == "alpha"
BROKEN=		"alignment issues"
.endif

COMMENT=	"packet sniffer program; for educational use"

DISTNAME=	sniffit.0.3.7.beta
PKGNAME=	sniffit-0.3.7b
CATEGORIES=	net security
MASTER_SITES=	http://www.tengu.be/files/
MASTER_SITES0=	http://ftp.debian.org/debian/dists/stable/main/source/net/ \
   		http://ftp.funet.fi/pub/mirrors/ftp.debian.org/debian/dists/stable/main/source/net/

PATCHFILES=	sniffit_0.3.7.beta-6.1.diff.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://reptile.rug.ac.be/~coder/sniffit/sniffit.html

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses pcap 

MAKE_FLAGS=	OBJ_FLAG="-w ${CFLAGS} -c" EXE_FLAG="-w ${CFLAGS} -o sniffit"

CONFIGURE_STYLE= gnu

ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sniffit
	${INSTALL_PROGRAM} ${WRKSRC}/sniffit ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/sniffit.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/sniffit.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/sniffit

.include <bsd.port.mk>
