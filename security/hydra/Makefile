# $OpenBSD: Makefile,v 1.15 2004/10/08 22:32:44 xsa Exp $

COMMENT=		"parallelized login hacker"

DISTNAME=		hydra-4.1-src
PKGNAME=		${DISTNAME:S/-src//}
CATEGORIES=    		security

HOMEPAGE=		http://www.thc.org/

MASTER_SITES=		${HOMEPAGE}/releases/ \
			${MASTER_SITE_PACKETSTORM:=groups/thc/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu dest

post-extract:
		@chmod -R u+w ${WRKDIST}

MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}"
FAKE_FLAGS=		INSTALL="${WRKINST}${PREFIX}/bin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
