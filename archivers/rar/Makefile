# $OpenBSD: Makefile,v 1.27 2001/02/27 17:53:12 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc

.if ${MACHINE_ARCH} == "i386"
DISTFILES=	rarbsd.sfx
PKGNAME=	rar-2.02
.elif ${MACHINE_ARCH} == "sparc"
DISTFILES=	rarsparc.sfx
PKGNAME=	rar-2.01
.endif

SUPDISTFILES=	rarsparc.sfx rarbsd.sfx

CATEGORIES=	archivers
NEED_VERSION=	1.330
MASTER_SITES=	${HOMEPAGE}/rar/ \
		ftp://ftp.netlab.sk/public/rarsoft/rar/

EXTRACT_CASES=	*.sfx) ${SUDO} chmod a+x ${FULLDISTDIR}/$$archive && \
	${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rarsoft.com

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"Shareware.  Requires registration."
PERMIT_PACKAGE_FTP=	"Shareware.  Requires registration."
PERMIT_DISTFILES_CDROM=	"Shareware.  Requires registration."
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

.if !defined(NO_WARNINGS)
pre-fetch:
.if ${MACHINE_ARCH} == "i386"
	@echo
	@echo "WARNING:	This application requires a kernel compiled with"
	@echo "		'option COMPAT_BSDOS' for proper operation.  The"
	@echo "		GENERIC kernel contains this option."
	@echo
.elif ${MACHINE_ARCH} == "sparc"
	@echo
	@echo "WARNING:	This application requires a kernel compiled with"
	@echo "		'option COMPAT_SVR4' and Solaris shared libraries"
	@echo "		for proper operation; see compat_svr4(8) for"
	@echo "		further details.  The GENERIC kernel contains this"
	@echo "		option."
	@echo
.endif
.endif

post-extract:
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKSRC} && \
	mv RAR rar && mv UNRAR unrar && \
	mv DEFAULT.SFX default.sfx && mv Rar_FAQ.Txt Rar_FAQ.txt
.endif

DOCS=	Rar_FAQ.txt TechNote.Txt License.Txt Internet.Txt Rar.Txt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rar
	${INSTALL_DATA_DIR} ${PREFIX}/share/rar
	${INSTALL_PROGRAM} ${WRKSRC}/rar ${PREFIX}/bin/rar
	cd ${WRKSRC}; ${INSTALL_MAN} ${DOCS} ${PREFIX}/share/doc/rar
	${INSTALL_DATA} ${WRKSRC}/RarFiles.Lst ${PREFIX}/share/rar/rarfiles.lst
	${INSTALL_DATA} ${WRKSRC}/default.sfx ${PREFIX}/share/rar
	${INSTALL_DATA} ${WRKSRC}/Dos.SFX ${PREFIX}/share/rar/dos.sfx

.include <bsd.port.mk>
