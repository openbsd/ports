# $OpenBSD: Makefile,v 1.7 2002/09/12 15:38:58 danh Exp $

COMMENT=	"send ICMP nasty garbage"

DISTNAME=	SING-1.1
PKGNAME=	${DISTNAME:L}
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
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
