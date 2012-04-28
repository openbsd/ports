# $OpenBSD: Makefile,v 1.32 2012/04/28 18:06:29 stu Exp $
# $FreeBSD: ports/lang/otcl/Makefile,v 1.6 1999/11/28 18:31:28 steve Exp $

COMMENT=	MIT Object Tcl

V=		1.14
DISTNAME=	otcl-src-$V
PKGNAME=	otcl-$V
SHARED_LIBS=	otcl 2.0
CATEGORIES=	lang
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

HOMEPAGE=	http://otcl-tclcl.sourceforge.net/otcl/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES +=	x11/tk
WANTLIB=	X11 Xext c m ${MODTK_WANTLIB}
LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=otcl-tclcl/}
WRKDIST=	${WRKDIR}/otcl-$V

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --x-includes=${X11BASE}/include \
		--with-tcl=${LOCALBASE} \
		--with-tk=${LOCALBASE} \
		--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTCL_VERSION} \
		--x-libraries=${X11BASE}/lib
CONFIGURE_ENV=	LIBotcl_VERSION=${LIBotcl_VERSION} \

NO_REGRESS=	Yes

.include <bsd.port.mk>
