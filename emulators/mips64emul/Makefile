# $OpenBSD: Makefile,v 1.1.1.1 2004/10/04 08:58:24 grange Exp $

COMMENT=		"MIPS machine emulator"
DISTNAME=		mips64emul-0.2.1
CATEGORIES=		emulators
HOMEPAGE=		http://www.mdstud.chalmers.se/~md1gavan/mips64emul/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.mdstud.chalmers.se/~md1gavan/mips64emul/src/

CONFIGURE_STYLE=	simple

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS=		--nox11
.else
USE_X11=		Yes
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mips64emul ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mips64emul
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mips64emul

.include <bsd.port.mk>
