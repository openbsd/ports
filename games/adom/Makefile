# $OpenBSD: Makefile,v 1.1.1.1 1999/06/18 16:54:55 espie Exp $

DISTNAME=		adom-g14

WRKSRC=${WRKDIR}/adom

CATEGORIES=     	games

ONLY_FOR_ARCHS=	i386

NO_CDROM=		prevented by license
NO_PACKAGE =	prevented by license

MAINTAINER=		espie@cvs.openbsd.org
AUTHOR= 			Thomas Biskup <rpg@saranxis.ruhr.de>

MASTER_SITES=		http://www.adom.de/adom/
DISTFILES=			adom-099g14-elf.tar.gz

NO_BUILD=	binary port

ADOM_DOC=${PREFIX}/share/doc/adom

# cage adom into its specific group if you don't trust the binary
ADOMOWN?=games

# can't be changed except by patching the binary
HISCORE_DIR=/var/lib/adom

pre-fetch:
	@${ECHO} "Your kernel must have COMPAT_LINUX (GENERIC does)"

do-install:
	@${INSTALL_DATA_DIR} ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL_DATA} adomfaq.txt manual.doc readme.1st ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL} ${INSTALL_COPY} \
		-o ${BINOWN} -g ${ADOMOWN} -m 2555 adom ${PREFIX}/bin
	@${INSTALL} -d -o ${SHAREOWN} -g ${ADOMOWN} -m 775 ${HISCORE_DIR}

.include <bsd.port.mk>
