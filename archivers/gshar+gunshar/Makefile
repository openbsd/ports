# $OpenBSD: Makefile,v 1.30 2013/06/25 06:14:57 rpe Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.13.1

CATEGORIES=	archivers

HOMEPAGE=	http://www.gnu.org/software/sharutils/

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
