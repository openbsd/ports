# OpenBSD makefile for:	acroread
# Version required:	4.0
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/03/09 01:58:24 espie Exp $
#

DISTNAME=	linux-ar-40
PKGNAME=	acroread-4.0
CATEGORIES=	print
NEED_VERSION=	1.223

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/4.x/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	/emul/linux/lib/libc.so.5:emulators/linux_lib

WRKDIST=	${WRKDIR}/ILINXR.install

do-build:
	@${ECHO_MSG} "Do a \`make install' as root."

FAKE=Yes
do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/Acrobat4
	@ReadInstallDir=${PREFIX}/Acrobat4 ${WRKSRC}/INSTALL

post-install:
	@cd ${PREFIX}/Acrobat4/bin && \
	  patch --quiet < ${FILESDIR}/acroread.diff && \
	  ${INSTALL_SCRIPT} ${PREFIX}/Acrobat4/bin/acroread \
	     ${PREFIX}/bin/acroread && rm acroread.orig
	@chmod +x ${PREFIX}/bin/acroread
	@chmod a+r ${PREFIX}/Acrobat4/Reader/ReadMe
	@echo "Be sure to read the license agreement in"
	@echo "${PREFIX}/Acrobat4/Reader/License.pdf"

.include <bsd.port.mk>
