# $OpenBSD: Makefile,v 1.12 2011/06/04 11:41:08 sthen Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.0
CATEGORIES=	net

MODULES=	www/pear

RUN_DEPENDS+=	net/pear-Net-Socket>=1.0.8 \
		security/pear-Auth-SASL>=1.0.2

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
