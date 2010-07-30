# $OpenBSD: Makefile,v 1.6 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=	matchbox shared icons and configuration data
DISTNAME=	matchbox-common-0.9.1
REVISION=	1

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-common/0.9/}

BUILD_DEPENDS=	::x11/matchbox/libmatchbox

USE_X11=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-pda-folders

post-build:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/matchbox-session

.include <bsd.port.mk>
