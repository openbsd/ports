# $OpenBSD: Makefile,v 1.4 2008/10/25 16:07:05 naddy Exp $

COMMENT=	unit test framework for C programs

DISTNAME=	check-0.9.5
SHARED_LIBS +=	check                0.0      # .0.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=check/}

HOMEPAGE=	http://check.sf.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-plain-docdir

.include <bsd.port.mk>
