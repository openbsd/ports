# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:05 sthen Exp $

COMMENT=		top-like monitor for Squid

PKGNAME=		sqtop-2015.02.08
GH_ACCOUNT=		paleg
GH_PROJECT=		sqtop
GH_TAGNAME=		v2015-02-08
REVISION=		0

CATEGORIES=		www
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
