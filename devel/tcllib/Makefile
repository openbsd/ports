# $OpenBSD: Makefile,v 1.3 2003/12/21 16:04:05 jose Exp $

COMMENT=		"useful routines for Tcl"

DISTNAME=		tcllib-1.4
CATEGORIES=		devel lang/tcl
TCLLIB=			tcllib1.4

HOMEPAGE=		http://www.tcl.tk/software/tcllib/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcllib/}
SUBST_VARS+=		TCLLIB

BUILD_DEPENDS=		tcl83.1.3::lang/tcl/8.3

CONFIGURE_STYLE= 	gnu dest

do-install:
			${LOCALBASE}/bin/tclsh8.3 ${WRKSRC}/installer.tcl \
			    -no-wait -no-examples -no-html -no-gui \
			    -pkg-path ${PREFIX}/lib/tcllib1.4 \
			    -nroff-path ${PREFIX}/man/mann

REGRESS_TARGET=		test

.include <bsd.port.mk>
