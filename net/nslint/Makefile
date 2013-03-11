# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:50 espie Exp $

COMMENT=		performs consistency checks on BIND files

DISTNAME=		nslint-2.0.2
REVISION=		0
CATEGORIES=		net

MAINTAINER=		Wangden Kelsang <wngdn@src.uchicago.edu>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.ee.lbl.gov/old/

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV+=		LDFLAGS=-static
.else
WANTLIB=		c
.endif

CONFIGURE_STYLE=	gnu
ALL_TARGET=		nslint
INSTALL_TARGET=		install install-man
USE_GROFF =		Yes

NO_TEST=		Yes

.include <bsd.port.mk>
