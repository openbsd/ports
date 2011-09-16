# $OpenBSD: Makefile,v 1.5 2011/09/16 11:13:39 espie Exp $

COMMENT=	interface to oEmbed

DISTNAME=	Services_oEmbed-0.1.0
REVISION=		0
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
