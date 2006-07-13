# $OpenBSD: Makefile,v 1.7 2006/07/13 17:14:21 steven Exp $

COMMENT=	"next generation scanning tool"

DISTNAME=	amap-5.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	security

HOMEPAGE=	http://thc.segfault.net/thc-amap/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL with changes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://thc.segfault.net/releases/ \
		${MASTER_SITE_PACKETSTORM:=groups/thc/}

WANTLIB=	c crypto ssl

LIB_DEPENDS=	pcre.0::devel/pcre

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@${CHMOD} -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(LOCALBASE)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
