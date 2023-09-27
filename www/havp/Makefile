COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.93
REVISION=	0
CATEGORIES=	www
SITES=		${HOMEPAGE}/download/

# https://github.com/HaveSec/HAVP
HOMEPAGE=	https://www.havp.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX} clamav

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	security/clamav

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-locking \
		--disable-trophie
CONFIGURE_ENV=	LDFLAGS="-pthread"
USE_GMAKE=	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/havp
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${WRKSRC}/COPYING ${PREFIX}/share/doc/havp

.include <bsd.port.mk>
