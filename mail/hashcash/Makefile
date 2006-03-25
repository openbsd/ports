# $OpenBSD: Makefile,v 1.3 2006/03/25 21:55:21 steven Exp $

COMMENT=		"hashcash anti-spam / denial of service counter-measure tool"

DISTNAME=		hashcash-1.21
CATEGORIES=     	mail

HOMEPAGE=		http://www.hashcash.org/

MAINTAINER=		Armin Wolfermann <armin@wolfermann.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/source/
EXTRACT_SUFX=		.tgz

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		x86
.else
ALL_TARGET=		generic
.endif

NO_REGRESS=		Yes

.include <bsd.port.mk>
