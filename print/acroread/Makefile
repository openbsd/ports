# OpenBSD makefile for:	acroread
# Version required:	4.0
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.11 2000/10/22 15:43:14 espie Exp $
#

DISTNAME=	linux-ar-40
PKGNAME=	acroread-4.0
CATEGORIES=	print
NEED_VERSION=	 1.230

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/4.x/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	/emul/linux/lib/libc.so.5::emulators/linux_lib

WRKDIST=	${WRKDIR}/ILINXR.install

do-build:
	@${ECHO_MSG} "Do a \`make install' as root."

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
