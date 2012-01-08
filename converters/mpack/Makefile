# $OpenBSD: Makefile,v 1.23 2012/01/08 00:12:12 sthen Exp $

COMMENT=	external MIME packer/unpacker

DISTNAME=	mpack-1.6
CATEGORIES=	converters mail news

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	http://ftp.andrew.cmu.edu/pub/mpack/ \
		ftp://ftp.andrew.cmu.edu/pub/mpack/

CONFIGURE_STYLE= gnu
NO_REGRESS=	Yes

.include <bsd.port.mk>
