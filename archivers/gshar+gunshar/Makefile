# $OpenBSD: Makefile,v 1.36 2019/07/12 20:43:28 sthen Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.15.2
REVISION=	2

CATEGORIES=	archivers

HOMEPAGE=	https://www.gnu.org/software/sharutils/

MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c intl

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --program-prefix="g" \
		 --disable-nls \
		 --disable-uucode
CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib"

# Regression tests pass without --disable-uuencode
NO_TEST=Yes

.include <bsd.port.mk>
