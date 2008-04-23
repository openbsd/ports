# $OpenBSD: Makefile,v 1.5 2008/04/23 22:18:27 jasper Exp $

COMMENT=	matchbox shared icons and configuration data
DISTNAME=	matchbox-common-0.9.1
PKGNAME=	${DISTNAME}p1

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-common/0.9/}

BUILD_DEPENDS=	::x11/matchbox/libmatchbox

USE_X11=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-pda-folders

post-build:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/matchbox-session

.include <bsd.port.mk>
