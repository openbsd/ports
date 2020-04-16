# $OpenBSD: Makefile,v 1.3 2020/04/16 12:28:36 fcambus Exp $

COMMENT =	library of Unicode names and annotation data

V =		20200413
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.1	# 1.7

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
