# $OpenBSD: Makefile,v 1.13 2000/02/11 00:37:32 espie Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	BitchX-1.0c16
PKGNAME=	bitchx-1.0c16
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/ \
		ftp://bitchx.dimension6.com/pub/BitchX/source/
NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

SEPARATE_BUILD=	concurrent
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

WRKDIST=	${WRKDIR}/BitchX

post-install:
	@find ${PREFIX}/share/bitchx/help -name 'CVS' -print | xargs rm -rf
	@chown -R root.wheel ${PREFIX}/share/bitchx

.include <bsd.port.mk>
