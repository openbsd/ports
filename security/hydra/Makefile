# $OpenBSD: Makefile,v 1.13 2004/10/02 04:08:42 tedu Exp $

COMMENT=		"parallelized login hacker"

DISTNAME=		hydra-4.1-src
CATEGORIES=    		security

HOMEPAGE=		http://www.thc.org/

MASTER_SITES=		${HOMEPAGE}/releases/ \
			${MASTER_SITE_PACKETSTORM:=groups/thc/}

MAINTAINER=		Van Helsing <vh@helith.net>

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
