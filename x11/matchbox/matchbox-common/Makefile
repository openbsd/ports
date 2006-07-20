# $OpenBSD: Makefile,v 1.2 2006/07/20 21:03:42 robert Exp $

COMMENT=	"matchbox shared icons and configuration data"
DISTNAME=	matchbox-common-0.9.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11/matchbox
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-common/0.9/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::x11/matchbox/libmatchbox

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-pda-folders

post-build:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/matchbox-session

.include <bsd.port.mk>
