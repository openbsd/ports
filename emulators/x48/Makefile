# $OpenBSD: Makefile,v 1.11 2001/05/06 00:34:43 lebel Exp $
#

COMMENT=		"HP48sx emulator"

DISTNAME=		x48-0.4.0
CATEGORIES=		emulators
NEED_VERSION=		1.402

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

CONFIGURE_STYLE=imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/x48
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	${INSTALL_DATA} ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc \
			${PREFIX}/share/x48

.include <bsd.port.mk>
