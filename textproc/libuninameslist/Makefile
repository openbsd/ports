# $OpenBSD: Makefile,v 1.4 2020/04/24 07:30:19 jca Exp $

COMMENT =	library of Unicode names and annotation data

V =		20200413
REVISION =	0
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.2	# 1.7
SHARED_LIBS +=  uninameslist-fr	0.0 	# 1.3

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-frenchlib

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
