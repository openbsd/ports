# $OpenBSD: Makefile,v 1.35 2010/10/18 18:36:50 espie Exp $
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $

COMMENT=	UCB/LBNL Network Simulator Version 2

V=		2.31
DISTNAME=	ns-src-$V
PKGNAME=	ns-$V
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://www.isi.edu/nsnam/ns/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c m pcap pthread-stubs stdc++ tcl84 tk84 xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nsnam/}
WRKDIST=	${WRKDIR}/ns-$V

BUILD_DEPENDS=	:tclcl->=1.0b13p0:devel/tclcl
LIB_DEPENDS=	otcl::lang/otcl

USE_X11=	Yes
USE_GROFF =	Yes
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
