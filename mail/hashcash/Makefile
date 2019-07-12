# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:28 sthen Exp $

COMMENT=		hashcash anti-spam / denial of service counter-measure tool

DISTNAME=		hashcash-1.22
CATEGORIES=     	mail

HOMEPAGE=		http://www.hashcash.org/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/source/
EXTRACT_SUFX=		.tgz

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		x86
.else
ALL_TARGET=		generic
.endif

NO_TEST=		Yes

.include <bsd.port.mk>
