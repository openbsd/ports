# $OpenBSD: Makefile,v 1.6 2015/10/24 10:25:39 sthen Exp $

COMMENT =		lightweight and flexible command-line JSON processor

V =			1.5
DISTNAME =		jq-$V

SHARED_LIBS +=	jq                        1.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =		https://github.com/stedolan/jq/releases/download/jq-$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
