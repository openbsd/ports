# $OpenBSD: Makefile,v 1.26 2006/08/09 09:46:10 bernd Exp $
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $

COMMENT=	"UCB/LBNL Network Simulator Version 2"

DISTNAME=	ns-2.26
PKGNAME=	${DISTNAME}p0
DISTFILES=	ns-src-2.26.tar.gz
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.ee.surrey.ac.uk/pub/Mirrors/ftp.isi.edu/nsnam/ \
		ftp://ftp.isi.edu/nsnam/ \
		http://www.isi.edu/nsnam/dist/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pcap stdc++ tcl83 tk83 

HOMEPAGE=	http://www.isi.edu/nsnam/ns/

LIB_DEPENDS=	otcl::lang/otcl \
		tclcl:tclcl->=1.0b13p0:devel/tclcl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2

do-regress:
	cd ${WRKSRC} && ./validate

.include <bsd.port.mk>
