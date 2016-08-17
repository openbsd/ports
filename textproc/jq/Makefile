# $OpenBSD: Makefile,v 1.10 2016/08/17 13:48:33 jasper Exp $

COMMENT =		lightweight and flexible command-line JSON processor

V =			1.5
REVISION =		2
DISTNAME =		jq-$V

SHARED_LIBS +=	jq                        1.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c m

MASTER_SITES =		https://github.com/stedolan/jq/releases/download/jq-$V/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
