# $OpenBSD: Makefile,v 1.1.1.1 2005/05/09 20:35:41 alek Exp $

COMMENT=	"next generation scanning tool"

DISTNAME=	amap-5.0
CATEGORIES=    	security

HOMEPAGE=	http://www.thc.org/

MAINTAINER=	Alexandre Anriot <aanriot@atlantilde.com>

# GPL with changes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/ \
		${MASTER_SITE_PACKETSTORM:=groups/thc/}

WANTLIB=	c crypto ssl

LIB_DEPENDS=	pcre.0::devel/pcre

CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@${CHMOD} -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(LOCALBASE)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
