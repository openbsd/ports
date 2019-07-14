# $OpenBSD: Makefile,v 1.24 2019/07/14 00:39:39 naddy Exp $

COMMENT=	application protocol detection tool

REVISION=	0
DISTNAME=	amap-5.4
CATEGORIES=	security

HOMEPAGE=	http://thc.org/thc-amap/

# GPL with changes
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://freeworld.thc.org/releases/

WANTLIB=	c crypto ssl pcre

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--prefix='${PREFIX}'

NO_TEST=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@chmod -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(TRUEPREFIX)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
