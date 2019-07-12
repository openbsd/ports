# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:16 sthen Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.6
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://www.freedesktop.org/wiki/Software/uchardet/

# MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://www.freedesktop.org/software/uchardet/releases/

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man"

.include <bsd.port.mk>
