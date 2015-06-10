# $OpenBSD: Makefile,v 1.6 2015/06/10 10:43:29 sthen Exp $

COMMENT=		daemon implementing NAT-PMP protocol for pf(4)

DISTNAME=		natpmpd-1.4
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://bodgitandscarper.co.uk/natpmpd/
MASTER_SITES=		http://natpmpd.s3.amazonaws.com/

MAINTAINER=		Matt Dainty <matt@bodgit-n-scarper.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event

FAKE_FLAGS=		MANDIR="${TRUEPREFIX}/man/man" \
			BINDIR="${TRUEPREFIX}/sbin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/natpmpd
	${INSTALL_DATA} ${WRKSRC}/natpmpd.conf \
		${PREFIX}/share/examples/natpmpd

.include <bsd.port.mk>
