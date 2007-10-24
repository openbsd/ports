# $OpenBSD: Makefile,v 1.30 2007/10/24 15:01:09 steven Exp $
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $

COMMENT=	UCB/LBNL Network Simulator Version 2

V=		2.31
DISTNAME=	ns-src-$V
PKGNAME=	ns-$V
CATEGORIES=	net

HOMEPAGE=	http://www.isi.edu/nsnam/ns/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext c m pcap stdc++ tcl84 tk84

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nsnam/}
WRKDIST=	${WRKDIR}/ns-$V

LIB_DEPENDS=	otcl::lang/otcl \
		tclcl:tclcl->=1.0b13p0:devel/tclcl

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.4 --with-tk-ver=8.4 \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2

do-regress:
	cd ${WRKSRC} && ./validate

.include <bsd.port.mk>
