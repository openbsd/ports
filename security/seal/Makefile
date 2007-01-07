# $OpenBSD: Makefile,v 1.1.1.1 2007/01/07 12:13:02 mbalmer Exp $

COMMENT=	"use vnd encrypted filesystems on hotplug devices"

DISTNAME=	seal-1.0

CATEGORIES=    	security

HOMEPAGE=	http://www.etc.msys.ch/sources/seal/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/seal/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	${MAKE_FLAGS}

NO_REGRESS=	Yes

post-install:
	mv ${WRKINST}/etc/seal.conf ${PREFIX}/share/examples/seal

.include <bsd.port.mk>
