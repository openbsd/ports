# $OpenBSD: Makefile,v 1.1.1.1 2005/01/25 21:19:22 naddy Exp $

COMMENT=	"eXtensible Open Router Platform"

DISTNAME=	xorp-1.0
CATEGORIES=	net
HOMEPAGE=	http://www.xorp.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xorp.org/releases/1.0/ \
		http://www2.xorp.org/releases/1.0/ \
		http://www3.xorp.org/releases/1.0/

WANTLIB=	c crypto curses m stdc++

# No BUILD_DEPENDS:
# Python only used to rebuild already included file with no changes.

USE_GMAKE=	Yes

PREFIX=		${LOCALBASE}/xorp
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-snmp	# --enable-optimize
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/cli/libtecla

.include <bsd.port.mk>
