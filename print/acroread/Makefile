# OpenBSD makefile for:	acroread
# Version required:	4.0
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 1999/07/19 18:21:16 jakob Exp $
#

DISTNAME=	linux-ar-40
PKGNAME=	acroread-4.0
CATEGORIES=	print

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/4.x/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	/emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

WRKSRC=		${WRKDIR}/ILINXR.install

do-build:
	@${ECHO_MSG} "Do a \`make install' as root."

do-install:
	@${MKDIR} ${PREFIX}/Acrobat4
	@ReadInstallDir=${PREFIX}/Acrobat4 ${WRKSRC}/INSTALL

post-install:
	@cd ${PREFIX}/Acrobat4/bin && \
	  ${PATCH} --quiet < ${FILESDIR}/acroread.diff && \
	  ${INSTALL_SCRIPT} ${PREFIX}/Acrobat4/bin/acroread \
	     ${PREFIX}/bin/acroread && ${RM} acroread.orig
	@chmod +x ${PREFIX}/bin/acroread
	@${ECHO_MSG} "Be sure to read the license agreement in"
	@${ECHO_MSG} "${PREFIX}/Acrobat4/Reader/License.pdf"

.include <bsd.port.mk>
