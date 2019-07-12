# $OpenBSD: Makefile,v 1.28 2019/07/12 20:43:49 sthen Exp $

COMMENT=	external MIME packer/unpacker

DISTNAME=	mpack-1.6
REVISION=	2
CATEGORIES=	converters mail news

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://ftp.andrew.cmu.edu/pub/mpack/ \
		ftp://ftp.andrew.cmu.edu/pub/mpack/

CONFIGURE_STYLE= gnu
NO_TEST=	Yes

# less annoying for patching
post-extract:
	chmod -R u+w ${WRKSRC}/

.include <bsd.port.mk>
