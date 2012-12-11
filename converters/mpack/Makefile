# $OpenBSD: Makefile,v 1.25 2012/12/11 11:01:31 sthen Exp $

COMMENT=	external MIME packer/unpacker

DISTNAME=	mpack-1.6
REVISION=	1
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

# less annoying for patching
post-extract:
	chmod -R u+w ${WRKSRC}/

.include <bsd.port.mk>
