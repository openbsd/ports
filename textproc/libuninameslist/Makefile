COMMENT =	library of Unicode names and annotation data

V =		20250909
DISTNAME =	libuninameslist-dist-$V
PKGNAME =	${DISTNAME:S/-dist//}

SHARED_LIBS +=	uninameslist	0.2	# 1.16
SHARED_LIBS +=  uninameslist-fr	0.0 	# 1.8

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/fontforge/libuninameslist

# BSD
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/fontforge/libuninameslist/releases/download/$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-frenchlib

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
