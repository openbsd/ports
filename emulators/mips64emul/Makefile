# $OpenBSD: Makefile,v 1.8 2005/01/13 08:18:33 grange Exp $

COMMENT=		"MIPS machine emulator"
DISTNAME=		mips64emul-0.2.4
CATEGORIES=		emulators
HOMEPAGE=		http://gavare.se/mips64emul/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}/src/

CONFIGURE_STYLE=	simple

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS=		--nox11
.else
USE_X11=		Yes
WANTLIB+=		X11
.endif

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mips64emul ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mips64emul
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mips64emul
	${INSTALL_DATA} ${WRKSRC}/man/mips64emul.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
