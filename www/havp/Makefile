# $OpenBSD: Makefile,v 1.23 2018/10/24 14:28:11 sthen Exp $

COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.92a
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/download/

REVISION=	6

HOMEPAGE=	http://www.server-side.de/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread ${COMPILER_LIBCXX} clamav

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		security/clamav

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=		--disable-locking \
			--disable-trophie
CONFIGURE_ENV=	LDFLAGS="-pthread"
USE_GMAKE=	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/havp
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${WRKSRC}/COPYING ${PREFIX}/share/doc/havp

.include <bsd.port.mk>

# old gcc doesn't give a shit about push_back...
# but formally: 
# void push_back( const T& value );
# void push_back( T&& value );  (in C++11)
# so we need T&& with clang
.if ${PROPERTIES:Mclang}
CFLAGS +=	-std=c++11
.endif
