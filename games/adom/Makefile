# $OpenBSD: Makefile,v 1.2 1999/09/23 20:32:41 brad Exp $
# Author: Thomas Biskup <rpg@saranxis.ruhr.de>

DISTNAME=	adom-g14
CATEGORIES=	games
MASTER_SITES=	http://www.adom.de/adom/
DISTFILES=	adom-099g14-elf.tar.gz

ONLY_FOR_ARCHS=	i386

NO_BUILD=	binary port
NO_CDROM=	"prevented by license"
NO_PACKAGE=	"prevented by license"

MAINTAINER=	espie@openbsd.org

WRKSRC=		${WRKDIR}/adom

ADOM_DOC=	${PREFIX}/share/doc/adom

# cage adom into its specific group if you don't trust the binary
ADOMOWN?=	games

# can't be changed except by patching the binary
HISCORE_DIR=	/var/lib/adom

pre-fetch:
	@${ECHO} "Your kernel must have COMPAT_LINUX (GENERIC does)"

do-install:
	@${INSTALL_DATA_DIR} ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL_DATA} adomfaq.txt manual.doc readme.1st ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL} ${INSTALL_COPY} \
		-o ${BINOWN} -g ${ADOMOWN} -m 2555 adom ${PREFIX}/bin
	@${INSTALL} -d -o ${SHAREOWN} -g ${ADOMOWN} -m 775 ${HISCORE_DIR}

.include <bsd.port.mk>
