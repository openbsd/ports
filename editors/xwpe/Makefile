# $OpenBSD: Makefile,v 1.18 2002/05/13 12:37:37 naddy Exp $

COMMENT=	"powerful programming editor"

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

MAINTAINER=	Yannick Cote <yanick@fries.net>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	${MAKE_FLAGS} prefix=${WRKINST}${PREFIX}
#SEPARATE_BUILD=	simple

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
