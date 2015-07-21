# $OpenBSD: Makefile,v 1.16 2015/07/21 15:52:23 jasper Exp $

TOOL=			binutils
TOOL_V=			2.21.1a

REVISION=		1

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_TEST=		No

.include <bsd.port.mk>
