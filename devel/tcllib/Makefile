# $OpenBSD: Makefile,v 1.9 2008/05/09 19:45:18 sthen Exp $

COMMENT=	Tcl Standard Library

DISTNAME=	tcllib-1.10
CATEGORIES=	devel lang/tcl
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcllib/}

HOMEPAGE=	http://sourceforge.net/projects/tcllib/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:tcl->=8.5:lang/tcl/8.5

PATCHORIG=	.pat.orig

NO_BUILD=	Yes

do-install:
	${LOCALBASE}/bin/tclsh8.5 ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html -no-apps \
	-pkg-path ${PREFIX}/lib/tcllib \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tcllib

# Define TEST_MODULES to restrict to a subset of regression tests.
do-regress:
	${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/tclsh8.5 \
	${WRKSRC}/sak.tcl test run -v ${TEST_MODULES} \
	${REGRESS_LOG}

.include <bsd.port.mk>
