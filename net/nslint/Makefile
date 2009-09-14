# $OpenBSD: Makefile,v 1.7 2009/09/14 13:18:46 sthen Exp $
# $FreeBSD: ports/net/nslint/Makefile,v 1.10 2000/04/09 18:12:37 cpiazza Exp $

COMMENT=		performs consistency checks on BIND files

DISTNAME=		nslint-2.0.2
CATEGORIES=     	net

MAINTAINER=		Wangden Kelsang <wngdn@src.uchicago.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ee.lbl.gov/old/

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=		LDFLAGS=-static
.else
WANTLIB=		c
.endif

CONFIGURE_STYLE=	gnu
ALL_TARGET=		nslint
INSTALL_TARGET=		install install-man

NO_REGRESS=		Yes

.include <bsd.port.mk>
