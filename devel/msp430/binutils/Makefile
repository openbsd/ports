# $OpenBSD: Makefile,v 1.18 2021/06/05 12:34:05 jasper Exp $

TOOL=			binutils
TOOL_V=			2.21.1a

REVISION=		2

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no \
			--enable-werror=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_TEST=		No

.include <bsd.port.mk>
