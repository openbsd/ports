# $OpenBSD: Makefile,v 1.20 2012/04/09 18:21:18 gsoares Exp $

COMMENT=	application protocol detection tool

REVISION=	0
DISTNAME=	amap-5.4
CATEGORIES=	security

HOMEPAGE=	http://thc.org/thc-amap/

# GPL with changes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://freeworld.thc.org/releases/ \
		${MASTER_SITE_PACKETSTORM:=groups/thc/}

WANTLIB=	c crypto ssl pcre

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--prefix='${PREFIX}'

NO_REGRESS=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@chmod -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(TRUEPREFIX)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
