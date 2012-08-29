# $OpenBSD: Makefile,v 1.1.1.1 2012/08/29 14:32:51 ajacoutot Exp $

COMMENT=	straightforward implementation of DBM

DISTNAME=	kyotocabinet-1.2.76

SHARED_LIBS +=	kyotocabinet 0.0 # 16.0

CATEGORIES=	databases

HOMEPAGE=	http://fallabs.com/kyotocabinet/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m pthread stdc++ z

MASTER_SITES=	${HOMEPAGE}pkg/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# This FLAVOR should be used for local builds only and not added to
# bulks (i.e. _no_ entry in databases/Makefile); the reason is that it
# uses -march=native which cannot be garanteed to work on a machine it
# was not compiled on.
FLAVORS=	optimized
FLAVOR?=

.if ${FLAVOR:Moptimized}
CONFIGURE_ARGS += --enable-opt
.else
CONFIGURE_ARGS += --disable-opt
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{configure,Makefile.in}

.include <bsd.port.mk>
