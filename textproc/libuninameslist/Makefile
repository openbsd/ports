# $OpenBSD: Makefile,v 1.5 2021/10/25 17:17:50 fcambus Exp $

COMMENT =	library of Unicode names and annotation data

V =		20210917
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.2	# 1.9
SHARED_LIBS +=  uninameslist-fr	0.0 	# 1.4

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-frenchlib

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
