# $OpenBSD: Makefile,v 1.3 2013/03/11 19:51:26 sthen Exp $

COMMENT=		daemon implementing NAT-PMP protocol for pf(4)

DISTNAME=		natpmpd-1.4
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://bodgitandscarper.co.uk/natpmpd/
MASTER_SITES=		http://natpmpd.s3.amazonaws.com/

MAINTAINER=		Matt Dainty <matt@bodgit-n-scarper.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/natpmpd
	${INSTALL_DATA} ${WRKSRC}/natpmpd.conf \
		${PREFIX}/share/examples/natpmpd

.include <bsd.port.mk>
