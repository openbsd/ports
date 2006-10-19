# $OpenBSD: Makefile,v 1.21 2006/10/19 00:18:13 sturm Exp $
# Author: Thomas Biskup <rpg@saranxis.ruhr.de>

COMMENT=	"Ancient Domains of Mystery - roguelike"

DISTNAME=	adom-1.1.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games
MASTER_SITES=   http://www.adom.de/adom/download/linux/
HOMEPAGE=	http://www.adom.de/
DISTFILES=	adom-111-elf.tar.gz

ONLY_FOR_ARCHS=	i386

NO_BUILD=	binary port
NO_REGRESS=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

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

.if !defined(NO_WARNINGS)
pre-fetch:
	@echo "Your kernel must have COMPAT_LINUX (GENERIC does)"
.endif

RUN_DEPENDS=	::emulators/fedora/base

do-install:
	@${INSTALL_DATA_DIR} ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL_DATA} adomfaq.txt manual.doc readme.1st ${ADOM_DOC}
	@cd ${WRKSRC} && ${INSTALL} ${INSTALL_COPY} \
		-o ${BINOWN} -g ${ADOMOWN} -m 2555 adom ${PREFIX}/bin/adom
	@${INSTALL} -d -o ${SHAREOWN} -g ${ADOMOWN} -m 775 ${WRKINST}${HISCORE_DIR}

.include <bsd.port.mk>
