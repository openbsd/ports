# $OpenBSD: Makefile,v 1.4 2002/06/13 08:22:47 mark Exp $

COMMENT=		"parallelized login hacker"

DISTNAME=		hydra-2.1
CATEGORIES=    		security
NEED_VERSION=		1.531

HOMEPAGE=		http://www.thehackerschoice.com/

MAINTAINER=		Mark Grimes <mark@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.thehackerschoice.com/releases/

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
MAKE_FILE=		Makefile.hydra

MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}"

FAKE_FLAGS=		INSTALL="${WRKINST}${PREFIX}/bin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
