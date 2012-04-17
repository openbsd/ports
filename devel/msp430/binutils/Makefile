# $OpenBSD: Makefile,v 1.12 2012/04/17 13:01:56 jasper Exp $

COMMENT=		GNU binutils for msp430

TOOL=			binutils
TOOL_V=			2.21.1a

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_REGRESS=		No

.include <bsd.port.mk>
