# $OpenBSD: Makefile,v 1.13 2019/10/04 12:45:12 kn Exp $

COMMENT =		lightweight and flexible command-line JSON processor

V =			1.6
DISTNAME =		jq-$V
REVISION =		0

# prevent clobbering existing distfile
DISTFILES =		${DISTNAME}-new{${DISTNAME}}${EXTRACT_SUFX}

SHARED_LIBS +=	jq                        1.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c m onig

LIB_DEPENDS =		textproc/oniguruma

MASTER_SITES =		https://github.com/stedolan/jq/releases/download/jq-$V/

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-oniguruma=${LOCALBASE}

.include <bsd.port.mk>
