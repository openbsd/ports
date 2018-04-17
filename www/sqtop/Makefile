# $OpenBSD: Makefile,v 1.10 2018/04/17 07:51:35 gonzalo Exp $

COMMENT=		top-like monitor for Squid

PKGNAME=		sqtop-2015.02.08
GH_ACCOUNT=		paleg
GH_PROJECT=		sqtop
GH_TAGNAME=		v2015-02-08

CATEGORIES=		www
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
