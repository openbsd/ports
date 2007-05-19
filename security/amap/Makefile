# $OpenBSD: Makefile,v 1.10 2007/05/19 11:19:50 aanriot Exp $

COMMENT=	"next generation scanning tool"

DISTNAME=	amap-5.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=    	security

HOMEPAGE=	http://thc.org/thc-amap/

# GPL with changes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://thc.org/releases/ \
		${MASTER_SITE_PACKETSTORM:=groups/thc/}

WANTLIB=	c crypto ssl

LIB_DEPENDS=	pcre::devel/pcre

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@${CHMOD} -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(LOCALBASE)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
