# $OpenBSD: Makefile,v 1.8 2005/02/07 19:01:50 pvalchev Exp $

COMMENT=		"SSH monitoring"

VERSION=		1.2g
DISTNAME=		autossh-${VERSION}
CATEGORIES=		sysutils

MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.harding.motd.ca/autossh/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

EXTRACT_SUFX=		.tgz

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent

DEFS=			-D"SSH_PATH=\"/usr/bin/ssh\"" -D"VER=\"${VERSION}\""

DOCS=			README
EXAMPLES=		autossh.host rscreen

do-build:
	cd ${WRKBUILD}; \
		${CC} ${CFLAGS} ${DEFS} -c ${WRKSRC}/autossh.c -o autossh.o; \
		${CC} -o autossh autossh.o

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/autossh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/autossh
	cd ${WRKBUILD} && ${INSTALL_PROGRAM} autossh ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_MAN} autossh.1 ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/autossh
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
			${PREFIX}/share/examples/autossh

.include <bsd.port.mk>
