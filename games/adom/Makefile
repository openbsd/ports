# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:41 espie Exp $
# Author: Thomas Biskup <rpg@saranxis.ruhr.de>

DISTNAME=	adom-g15
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=   http://www.adom.de/adom/download/linux/
DISTFILES=	adom-099g15-elf.tar.gz

ONLY_FOR_ARCHS=	i386

NO_BUILD=	binary port

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	"no modify"
PERMIT_PACKAGE_FTP=	"no modify"
PERMIT_DISTFILES_CDROM=	"no modify"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/adom

ADOM_DOC=	${PREFIX}/share/doc/adom

# cage adom into its specific group if you don't trust the binary
ADOMOWN?=	games

# can't be changed except by patching the binary
HISCORE_DIR=	/var/lib/adom

pre-fetch:
	@echo "Your kernel must have COMPAT_LINUX (GENERIC does)"

do-install:
	@${INSTALL_DATA_DIR} ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL_DATA} adomfaq.txt manual.doc readme.1st ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL} ${INSTALL_COPY} \
		-o ${BINOWN} -g ${ADOMOWN} -m 2555 adom ${PREFIX}/bin
	@${INSTALL} -d -o ${SHAREOWN} -g ${ADOMOWN} -m 775 ${HISCORE_DIR}

.include <bsd.port.mk>
