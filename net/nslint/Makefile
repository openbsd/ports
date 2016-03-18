# $OpenBSD: Makefile,v 1.16 2016/03/18 04:35:35 mmcc Exp $

COMMENT=		performs consistency checks on BIND files

DISTNAME=		nslint-2.0.2
REVISION=		2
CATEGORIES=		net

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.ee.lbl.gov/old/

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV+=		LDFLAGS="${STATIC}"
.else
WANTLIB=		c
.endif

CONFIGURE_STYLE=	gnu
ALL_TARGET=		nslint
INSTALL_TARGET=		install install-man

NO_TEST=		Yes

.include <bsd.port.mk>
