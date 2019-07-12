# $OpenBSD: Makefile,v 1.41 2019/07/12 20:47:28 sthen Exp $

COMMENT=	synchronize IMAP4 and maildir mailboxes

DISTNAME=	isync-1.3.1

CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=isync/}

HOMEPAGE=	http://isync.sourceforge.net/

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB= c crypto db sasl2 ssl z

COMPILER=		base-clang ports-clang ports-gcc

LIB_DEPENDS=		databases/db/v4 \
			security/cyrus-sasl2

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db4" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/isync/examples ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
