# $OpenBSD: Makefile,v 1.2 2020/03/15 19:48:10 fcambus Exp $

COMMENT =	library of Unicode names and annotation data

V =		20200313
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.0	# 1.6

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
