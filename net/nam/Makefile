# $OpenBSD: Makefile,v 1.27 2009/08/10 06:33:43 kili Exp $
# $FreeBSD: ports/net/nam/Makefile,v 1.3 1999/11/29 03:46:08 steve Exp $

COMMENT=	UCB/LBNL Network Animator

V=		1.13
DISTNAME=	nam-src-$V
PKGNAME=	nam-$Vp0
CATEGORIES=	net

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=nsnam/}

HOMEPAGE=	http://www.isi.edu/nsnam/nam/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m otcl pthread-stubs stdc++ tcl84 tk84 xcb z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:tclcl->=1.0b13p0:devel/tclcl

WRKDIST=	${WRKDIR}/nam-$V

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.4 --with-tk-ver=8.4 \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

ALL_TARGET=

USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam

.include <bsd.port.mk>
