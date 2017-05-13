# $OpenBSD: Makefile,v 1.17 2017/05/13 19:28:24 espie Exp $

TOOL=			binutils
TOOL_V=			2.21.1a

REVISION=		1

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no \
			--enable-werror=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_TEST=		No

.include <bsd.port.mk>
