# $OpenBSD: Makefile,v 1.8 2002/12/27 18:07:00 danh Exp $

COMMENT=	"send ICMP nasty garbage"

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sing/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sourceforge.net/projects/sing

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
