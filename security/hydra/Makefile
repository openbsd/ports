# $OpenBSD: Makefile,v 1.9 2003/11/02 17:40:17 margarida Exp $

COMMENT=		"parallelized login hacker"

DISTNAME=		hydra-2.2
CATEGORIES=    		security

HOMEPAGE=		http://www.thehackerschoice.com/

MASTER_SITES=		${HOMEPAGE}/releases/ \
			${MASTER_SITE_PACKETSTORM:=groups/thc/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
MAKE_FILE=		Makefile.hydra

MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}"

FAKE_FLAGS=		INSTALL="${WRKINST}${PREFIX}/bin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
