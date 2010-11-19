# $OpenBSD: Makefile,v 1.11 2010/11/19 22:31:37 espie Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
