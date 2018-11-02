# $OpenBSD: Makefile,v 1.11 2018/11/02 16:41:29 sthen Exp $

COMMENT =		lightweight and flexible command-line JSON processor

V =			1.6
DISTNAME =		jq-$V

SHARED_LIBS +=	jq                        1.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c m onig

LIB_DEPENDS =		textproc/oniguruma

MASTER_SITES =		https://github.com/stedolan/jq/releases/download/jq-$V/

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-oniguruma=${LOCALBASE}

.include <bsd.port.mk>
