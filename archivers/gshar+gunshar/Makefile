# $OpenBSD: Makefile,v 1.35 2019/05/20 22:15:00 naddy Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.15.2
REVISION=	2

CATEGORIES=	archivers

HOMEPAGE=	https://www.gnu.org/software/sharutils/

MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

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
