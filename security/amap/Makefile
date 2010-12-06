# $OpenBSD: Makefile,v 1.15 2010/12/06 12:08:55 stephan Exp $

COMMENT=	application protocol detection tool

DISTNAME=	amap-5.2
REVISION =	3
CATEGORIES=    	security

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

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

CONFIGURE_STYLE=	gnu dest

USE_GROFF =	Yes
NO_REGRESS=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@${CHMOD} -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(LOCALBASE)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
