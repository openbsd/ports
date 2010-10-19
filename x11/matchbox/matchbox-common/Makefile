# $OpenBSD: Makefile,v 1.7 2010/10/19 15:21:04 ajacoutot Exp $

COMMENT=	matchbox shared icons and configuration data
DISTNAME=	matchbox-common-0.9.1
REVISION=	1

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-common/0.9/}

BUILD_DEPENDS=	::x11/matchbox/libmatchbox


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-pda-folders

post-build:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/matchbox-session

.include <bsd.port.mk>
