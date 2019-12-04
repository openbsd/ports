# $OpenBSD: Makefile,v 1.1.1.1 2019/12/04 08:33:50 fcambus Exp $

COMMENT =	library of Unicode names and annotation data

V =		20190701
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.0	# 1.5

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
