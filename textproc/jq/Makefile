# $OpenBSD: Makefile,v 1.8 2016/04/23 14:11:14 sthen Exp $

COMMENT =		lightweight and flexible command-line JSON processor

V =			1.5
REVISION =		0
DISTNAME =		jq-$V

SHARED_LIBS +=	jq                        1.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		http://stedolan.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =		https://github.com/stedolan/jq/releases/download/jq-$V/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
