# $OpenBSD: Makefile,v 1.18 2012/03/29 13:38:13 sthen Exp $

COMMENT=	C++ reference implementation of the Atlas protocol

VERSION=	0.4.3.1
DISTNAME=	Atlas-C++-${VERSION}
PKGNAME=	${DISTNAME:S/C++-//:L}
REVISION=	3
SHARED_LIBS +=	Atlas                2.0      # .1.1
SHARED_LIBS +=	AtlasObjects         2.0      # .1.1
SHARED_LIBS +=	AtlasObjectsEntity   2.0      # .1.1
SHARED_LIBS +=	AtlasObjectsOperation 2.0      # .1.1
SHARED_LIBS +=	AtlasMessage         2.0      # .1.1
SHARED_LIBS +=	AtlasCodecs          2.0      # .1.1
SHARED_LIBS +=	AtlasNet             2.0      # .1.1
SHARED_LIBS +=	AtlasFunky           2.0      # .1.1
CATEGORIES=	devel

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.ecs.soton.ac.uk/pub/worldforge/acorn/0.4/src/ \
		http://kafka.i-site.com/~novalis/mirrors/acorn/0.4/src/

WANTLIB+=	m stdc++

USE_LIBTOOL=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

VMEM_WARNING=	Yes

.include <bsd.port.mk>
