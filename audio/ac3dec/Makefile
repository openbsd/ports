# $NetBSD: Makefile,v 1.2 2000/01/07 04:20:49 hubertf Exp $
# $OpenBSD: Makefile,v 1.4 2000/06/10 17:39:11 espie Exp $

.if ${MACHINE_ARCH} != "i386"
BROKEN=		i386 asm instructions in source code.
.endif

DISTNAME=	ac3dec-0.5.6
CATEGORIES=	audio
NEED_VERSION=	1.300
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	angelos@openbsd.org
HOMEPAGE=	http://ess.engr.uvic.ca/%7Eaholtzma/ac3/

CONFIGURE_STYLE=	gnu

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=			Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/ac3dec

.include <bsd.port.mk>
