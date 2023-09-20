COMMENT=	external MIME packer/unpacker

DISTNAME=	mpack-1.6
REVISION=	3
CATEGORIES=	converters mail news

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

SITES=		http://ftp.andrew.cmu.edu/pub/mpack/ \
		https://spacehopper.org/mirrors/

CONFIGURE_STYLE= gnu
NO_TEST=	Yes

# less annoying for patching; not the same as FIX_EXTRACT_PERMISSIONS
post-extract:
	chmod -R u+w ${WRKSRC}/

.include <bsd.port.mk>
