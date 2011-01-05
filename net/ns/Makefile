# $OpenBSD: Makefile,v 1.39 2011/01/05 19:06:06 sebastia Exp $
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $

COMMENT=	UCB/LBNL Network Simulator Version 2

V=		2.31
DISTNAME=	ns-src-$V
PKGNAME=	ns-$V
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://www.isi.edu/nsnam/ns/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES +=	x11/tk
MODTK_VERSION =	8.4
WANTLIB +=	X11 c m pcap pthread-stubs stdc++ xcb otcl
WANTLIB +=	${MODTK_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nsnam/}
WRKDIST=	${WRKDIR}/ns-$V

BUILD_DEPENDS=	devel/tclcl>=1.0b13p0
LIB_DEPENDS=	lang/otcl \
		${MODTK_LIB_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
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
