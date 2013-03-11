# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:51 espie Exp $

COMMENT=		hashcash anti-spam / denial of service counter-measure tool

DISTNAME=		hashcash-1.22
CATEGORIES=     	mail

HOMEPAGE=		http://www.hashcash.org/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/source/
EXTRACT_SUFX=		.tgz
USE_GROFF =		Yes

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		x86
.else
ALL_TARGET=		generic
.endif

NO_TEST=		Yes

.include <bsd.port.mk>
