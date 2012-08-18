# $OpenBSD: Makefile,v 1.10 2012/08/18 12:41:38 ajacoutot Exp $

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
USE_GROFF =		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
