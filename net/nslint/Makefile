# $OpenBSD: Makefile,v 1.1.1.1 2001/02/28 23:57:34 naddy Exp $
# $FreeBSD: ports/net/nslint/Makefile,v 1.10 2000/04/09 18:12:37 cpiazza Exp $

DISTNAME=		nslint-2.0.2a2
CATEGORIES=     	net
NEED_VERSION=		1.352
MAINTAINER=		Wangden Kelsang <wngdn@src.uchicago.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ee.lbl.gov/

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=		LDFLAGS=-static
.endif

CONFIGURE_STYLE=	gnu
ALL_TARGET=		nslint
INSTALL_TARGET=		install install-man

.include <bsd.port.mk>
