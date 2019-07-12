# $OpenBSD: Makefile,v 1.51 2019/07/12 20:48:34 sthen Exp $

COMMENT=	UCB/LBNL Network Simulator Version 2

V=		2.35
DISTNAME=	ns-src-$V
PKGNAME=	ns-$V
REVISION =	5
CATEGORIES=	net
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

HOMEPAGE=	http://nsnam.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MODULES +=	x11/tk
WANTLIB +=	X11 Xext c m pcap ${COMPILER_LIBCXX} otcl
WANTLIB +=	${MODTK_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nsnam/}
WRKDIST=	${WRKDIR}/ns-$V

BUILD_DEPENDS=	devel/tclcl
LIB_DEPENDS=	lang/otcl \
		${MODTK_LIB_DEPENDS}

CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.68

CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tcl=${LOCALBASE} \
		--with-tk=${LOCALBASE} \
		--with-tclcl=${LOCALBASE} \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2

do-test:
	cd ${WRKSRC} && ./validate

.include <bsd.port.mk>
