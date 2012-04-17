# $OpenBSD: Makefile,v 1.11 2012/04/17 12:46:17 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.21.1a
R=			20120406
DISTNAME=		binutils-$V

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		msp430-binutils-${V}-${R}.patch:0

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_REGRESS=		No

.include <bsd.port.mk>
