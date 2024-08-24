COMMENT=	synchronize IMAP4 and maildir mailboxes

DISTNAME=	isync-1.5.0

CATEGORIES=	mail
SITES=		${SITE_SOURCEFORGE:=isync/}

HOMEPAGE=	https://isync.sourceforge.net/

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# Backout "make DNS lookup asynchronous" doing fork(2) for async getaddrinfo(3)
# to avoid pledging "proc".
SITES.fix=		https://git.sr.ht/~klemens/isync/commit/
PATCHFILES.fix= 	ec50c55c36887b86b0143a265acae4b22d117fe9.patch
PATCH_DIST_STRIP=	-R -p1

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB= c crypto db sasl2 ssl z

# on sparc64 ports-clang fails due to `-no-intergrated-as' default
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		databases/db/v4 \
			security/cyrus-sasl2

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/db4" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/isync/examples ${PREFIX}/share/examples/isync

.include <bsd.port.mk>
