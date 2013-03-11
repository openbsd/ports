# $OpenBSD: Makefile,v 1.26 2013/03/11 01:30:27 espie Exp $

COMMENT=	external MIME packer/unpacker

DISTNAME=	mpack-1.6
REVISION=	1
CATEGORIES=	converters mail news

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://ftp.andrew.cmu.edu/pub/mpack/ \
		ftp://ftp.andrew.cmu.edu/pub/mpack/

CONFIGURE_STYLE= gnu
NO_TEST=	Yes

# less annoying for patching
post-extract:
	chmod -R u+w ${WRKSRC}/

.include <bsd.port.mk>
