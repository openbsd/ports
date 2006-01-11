# $OpenBSD: Makefile,v 1.10 2006/01/11 12:26:36 espie Exp $

COMMENT=	"C++ reference implementation of the Atlas protocol"

VERSION=	0.4.3.1
DISTNAME=	Atlas-C++-${VERSION}
PKGNAME=	${DISTNAME:S/C++-//:L}p0
SHARED_LIBS=		Atlas			1.1 \
			AtlasCodecs		1.1 \
			AtlasFunky		1.1 \
			AtlasMessage		1.1 \
			AtlasNet		1.1 \
			AtlasObjects		1.1 \
			AtlasObjectsEntity	1.1 \
			AtlasObjectsOperation	1.1
CATEGORIES=	devel

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.ecs.soton.ac.uk/pub/worldforge/acorn/0.4/src/ \
		http://kafka.i-site.com/~novalis/mirrors/acorn/0.4/src/

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

VMEM_WARNING=	Yes

.include <bsd.port.mk>
