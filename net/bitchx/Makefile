# $OpenBSD: Makefile,v 1.10 1999/12/20 15:39:18 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	BitchX-1.0c13
PKGNAME=	bitchx-1.0c13
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/

MAINTAINER=	brad@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

WRKSRC=	${WRKDIR}/BitchX

post-install:
	@find ${PREFIX}/share/bitchx/help -name 'CVS' -print | xargs rm -rf
	@chown -R root.wheel ${PREFIX}/share/bitchx

.include <bsd.port.mk>
