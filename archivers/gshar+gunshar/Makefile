# $OpenBSD: Makefile,v 1.31 2013/11/09 23:19:01 naddy Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.13.1
REVISION=	0

CATEGORIES=	archivers

HOMEPAGE=	https://www.gnu.org/software/sharutils/

MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --program-prefix="g" \
		 --disable-nls \
		 --disable-uucode

# Regression tests pass without --disable-uuencode
NO_TEST=Yes

.include <bsd.port.mk>
