# $OpenBSD: Makefile,v 1.25 2000/09/15 12:54:44 espie Exp $

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
MASTER_SITES=	ftp://rarsoft.ti.sk/pub/rar/

EXTRACT_CASES=	*.sfx) chmod u+x ${FULLDISTDIR}/$$archive && \
	${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rarsoft.com/

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
	@echo "		'option COMPAT_SVR4' for proper operation.  The"
	@echo "		GENERIC kernel contains this option."
	@echo
.endif
.endif

post-extract:
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKSRC} && \
	mv RAR rar && mv UNRAR unrar && \
	mv DEFAULT.SFX default.sfx && mv Rar_FAQ.Txt Rar_FAQ.txt
.endif

DOCS=	Rar_FAQ.txt TechNote.Txt License.Txt Internet.Txt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rar
	${INSTALL_DATA_DIR} ${PREFIX}/share/rar
	${INSTALL_PROGRAM} ${WRKSRC}/rar ${PREFIX}/bin/rar
	${INSTALL_MAN} ${WRKSRC}/Rar.Txt ${PREFIX}/man/cat1/rar.1
	cd ${WRKSRC}; ${INSTALL_MAN} ${DOCS} ${PREFIX}/share/doc/rar
	${INSTALL_DATA} ${WRKSRC}/RarFiles.Lst ${PREFIX}/share/rar/rarfiles.lst
	${INSTALL_DATA} ${WRKSRC}/default.sfx ${PREFIX}/share/rar
	${INSTALL_DATA} ${WRKSRC}/Dos.SFX ${PREFIX}/share/rar/dos.sfx

.include <bsd.port.mk>
