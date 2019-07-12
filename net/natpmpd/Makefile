# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:33 sthen Exp $

COMMENT=		daemon implementing NAT-PMP protocol for pf(4)

DISTNAME=		natpmpd-1.4
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://bodgitandscarper.co.uk/natpmpd/
MASTER_SITES=		http://natpmpd.s3.amazonaws.com/

MAINTAINER=		Matt Dainty <matt@bodgit-n-scarper.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c event

FAKE_FLAGS=		MANDIR="${TRUEPREFIX}/man/man" \
			BINDIR="${TRUEPREFIX}/sbin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/natpmpd
	${INSTALL_DATA} ${WRKSRC}/natpmpd.conf \
		${PREFIX}/share/examples/natpmpd

.include <bsd.port.mk>
