# $OpenBSD: Makefile,v 1.6 2006/11/20 18:33:48 bernd Exp $

COMMENT=		"useful routines for Tcl"

DISTNAME=		tcllib-1.4
CATEGORIES=		devel lang/tcl
TCLLIB=			tcllib1.4

HOMEPAGE=		http://www.tcl.tk/software/tcllib/

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcllib/}
SUBST_VARS+=		TCLLIB

BUILD_DEPENDS=		::lang/tcl/8.4

CONFIGURE_STYLE= 	gnu dest

do-install:
			${LOCALBASE}/bin/tclsh8.4 ${WRKSRC}/installer.tcl \
			    -no-wait -no-examples -no-html -no-gui \
			    -pkg-path ${PREFIX}/lib/tcllib1.4 \
			    -nroff-path ${PREFIX}/man/mann

REGRESS_TARGET=		test

.include <bsd.port.mk>
