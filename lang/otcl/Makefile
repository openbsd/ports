# $OpenBSD: Makefile,v 1.26 2009/08/10 17:31:07 kili Exp $
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $

COMMENT=	MIT Object Tcl

V=		1.13
DISTNAME=	otcl-src-$V
PKGNAME=	otcl-$Vp1
SHARED_LIBS=	otcl 1.0
CATEGORIES=	lang

HOMEPAGE=	http://otcl-tclcl.sourceforge.net/otcl/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread-stubs tcl84 xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=otcl-tclcl/}
WRKDIST=	${WRKDIR}/otcl-$V

LIB_DEPENDS=    tk84.>=1:tk->=8.4,<8.5:x11/tk/8.4

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+=--includedir=${PREFIX}/include/tcl8.4/generic \
		--with-tcl-ver=8.4 \
		--with-tk-ver=8.4 \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib
CONFIGURE_ENV=	LIBotcl_VERSION=${LIBotcl_VERSION}

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
