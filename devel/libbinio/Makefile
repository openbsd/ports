# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:37 sthen Exp $

COMMENT =	binary I/O stream class library

DISTNAME =	libbinio-1.4
REVISION =	2
SHARED_LIBS +=	binio	0.0	# 1.0
CATEGORIES =	devel

HOMEPAGE =	http://libbinio.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libbinio/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
