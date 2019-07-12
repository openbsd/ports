# $OpenBSD: Makefile,v 1.41 2019/07/12 20:48:56 sthen Exp $

COMMENT=	utilities for manipulating PostScript documents

DISTNAME=	psutils-1.23
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like (${WRKSRC}/LICENSE)
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://pkgs.fedoraproject.org/repo/pkgs/psutils/psutils-1.23.tar.xz/eedd282973a58ac6bbf890316a3b02d8/

RUN_DEPENDS=	print/libpaper

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
