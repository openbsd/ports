# OpenBSD makefile for:	acroread
# Version required:	3.01
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/30 02:57:44 marc Exp $
#

DISTNAME=	acroread_linux_301
PKGNAME=	acroread-3.01
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/3.x/ \
		ftp://sunsite.cnlab-switch.ch/mirror/acrobatreader/unix/3.x/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	/emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

NO_WRKSUBDIR=	yes

do-build:
	@${ECHO_MSG} "Do a \`make install' as root."

do-install:
	@${MKDIR} ${PREFIX}/Acrobat3
	@ReadInstallDir=${PREFIX}/Acrobat3 ${WRKDIR}/INSTALL

post-install:
	@sed -e 's/Linux)/OpenBSD\|Linux)/' <${PREFIX}/Acrobat3/bin/acroread >${PREFIX}/bin/acroread
	@chmod +x ${PREFIX}/bin/acroread
	@${ECHO_MSG} "Be sure to read the license agreement in"
	@${ECHO_MSG} "${PREFIX}/Acrobat3/Reader/License.pdf"

.include <bsd.port.mk>
