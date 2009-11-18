# $OpenBSD: Makefile,v 1.1.1.1 2009/11/18 19:13:04 jasper Exp $

COMMENT=	interface to oEmbed

DISTNAME=	Services_oEmbed-0.1.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/pear-Validate \
			::net/pear-Net-URL2 \
			::www/pear-HTTP-Request

.include <bsd.port.mk>
