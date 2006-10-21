# $OpenBSD: Makefile,v 1.7 2006/10/21 09:42:32 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Modula-3 distribution for building CVSup"
DISTNAME=	ezm3-1.0
CATEGORIES=	lang

HOMEPAGE=	http://www.polstra.com/projects/freeware/ezm3/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES= 	ftp://ftp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.se.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.uk.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.ru.FreeBSD.org/pub/FreeBSD/ \
		ftp://ftp.nectec.or.th/pub/FreeBSD/ \
		ftp://ftp.dnsbalance.ring.gr.jp/pub/FreeBSD/
MASTER_SITES:=	${MASTER_SITES:=development/CVSup/ezm3/}
MASTER_SITES0=	http://sites.inka.de/~mips/unix/distfiles/

DISTFILES=	${DISTNAME}b-${M3ARCH}-boot.tar.bz2:0 \
		${DISTNAME}-src.tar.bz2

# Ezm3 provides full X11 GUI support even when compiled on systems
# which do not have X11 installed.
USE_X11=	No
USE_GMAKE=	Yes
ALL_TARGET=	exportall

M3ARCH=		OpenBSD_386
M3OPTIONS=	-DPREFIX=${PREFIX} -DX11BASE=${X11BASE}/lib \
		-DBUILD_ALL -DSHIP_ALL
M3WORDSIZE=	32
MAKE_FLAGS=	M3OPTIONS="${M3OPTIONS}"
SUBST_VARS=	M3ARCH M3WORDSIZE

WRKINST=	${WRKDIST}/binaries/${M3ARCH}

post-patch:
	cp ${FILESDIR}/OpenBSD ${WRKSRC}/m3config/src

do-install:
	chown -R ${BINOWN}:${BINGRP} ${WRKINST}
	cd ${PREFIX} && \
	    strip bin/m3build bin/m3bundle bin/m3ship lib/m3/${M3ARCH}/m3cgc1
	${INSTALL_DATA_DIR} ${PREFIX}/share/ezm3
	${INSTALL_DATA} ${WRKSRC}/src/COPYRIGHT ${PREFIX}/share/ezm3

NO_REGRESS=	Yes

.include <bsd.port.mk>
