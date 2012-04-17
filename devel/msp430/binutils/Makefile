# $OpenBSD: Makefile,v 1.13 2012/04/17 13:07:36 jasper Exp $

COMMENT=		GNU binutils for msp430

TOOL=			binutils
TOOL_V=			2.21.1a

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_REGRESS=		No

.include <bsd.port.mk>
