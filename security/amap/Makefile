# $OpenBSD: Makefile,v 1.3 2005/06/20 18:26:11 niallo Exp $

COMMENT=	"next generation scanning tool"

DISTNAME=	amap-5.1
CATEGORIES=    	security

HOMEPAGE=	http://www.thc.org/thc-amap/

MAINTAINER=	Alexandre Anriot <aanriot@atlantilde.com>

# GPL with changes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.thc.org/releases/ \
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
