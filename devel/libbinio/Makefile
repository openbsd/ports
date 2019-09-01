# $OpenBSD: Makefile,v 1.8 2019/09/01 20:10:32 fcambus Exp $

COMMENT =	binary I/O stream class library

DISTNAME =	libbinio-1.5
EXTRACT_SUFX =	.tar.bz2
SHARED_LIBS +=	binio	0.0	# 1.0

CATEGORIES =	devel

HOMEPAGE =	https://adplug.github.io/libbinio/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://github.com/adplug/libbinio/releases/download/${DISTNAME}/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
