# $OpenBSD: Makefile,v 1.4 2005/04/17 19:25:53 naddy Exp $

COMMENT=	"eXtensible Open Router Platform"

VERSION=	1.1
DISTNAME=	xorp-${VERSION}
CATEGORIES=	net
HOMEPAGE=	http://www.xorp.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xorp.org/releases/${VERSION}/ \
		http://www2.xorp.org/releases/${VERSION}/ \
		http://www3.xorp.org/releases/${VERSION}/

WANTLIB=	c crypto curses m stdc++

# No BUILD_DEPENDS:
# Python only used to rebuild already included file with no changes.

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
.if !defined(PACKAGING)
PREFIX=${LOCALBASE}/xorp
.endif

CONFIGURE_ARGS=	--enable-optimize
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/cli/libtecla

REGRESS_DEPENDS=	::shells/bash

# some regression tests must be run as root
do-regress:
	@cd ${WRKBUILD}; ${SUDO} ${MAKE_PROGRAM} ${REGRESS_TARGET}

.include <bsd.port.mk>
