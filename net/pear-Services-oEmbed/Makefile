# $OpenBSD: Makefile,v 1.4 2011/06/04 11:41:08 sthen Exp $

COMMENT=	interface to oEmbed

DISTNAME=	Services_oEmbed-0.1.0
CATEGORIES=	net

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/pear-Validate \
			net/pear-Net-URL2 \
			net/pear-HTTP-Request

.include <bsd.port.mk>
