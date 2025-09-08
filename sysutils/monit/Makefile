COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.35.2
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.mmonit.com/monit/

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

# AGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto execinfo m kvm pthread ssl z

SITES=		${HOMEPAGE}/dist/

# C11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE=gnu

# Must specify C99 for base-gcc
CFLAGS+=	-std=c99

SUBST_VARS=	LOCALSTATEDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/monitrc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
