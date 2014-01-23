# $OpenBSD: Makefile,v 1.9 2014/01/23 18:05:22 bcallah Exp $

COMMENT=		minimal XML library
DISTNAME=		mxml-2.8
CATEGORIES=		textproc

SHARED_LIBS=		mxml	0.2	# 1.5

HOMEPAGE=		http://www.msweet.org/projects.php?Z3
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# LGPLv2 with exceptions
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://www.msweet.org/files/project3/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-threads
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}

NO_TEST=		Yes

.include <bsd.port.mk>
