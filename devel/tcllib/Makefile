# $OpenBSD: Makefile,v 1.2 2003/01/18 19:12:09 pvalchev Exp $

COMMENT=		"useful routines for Tcl 8.3"

DISTNAME=		tcllib-1.3
CATEGORIES=		devel lang/tcl

HOMEPAGE=		http://tcllib.sourceforge.net/doc/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tcllib/}

BUILD_DEPENDS=		tcl83.1.3::lang/tcl/8.3

CONFIGURE_STYLE= gnu dest

.include <bsd.port.mk>
