# $OpenBSD: Makefile,v 1.24 2000/09/06 06:32:07 brad Exp $

ONLY_FOR_ARCHS=	i386 sparc

.if ${MACHINE_ARCH} == "i386"
DISTNAME=	rarbsd
PKGNAME=	rar-2.02
SUPDISTFILES=	rarsparc.sfx
.elif ${MACHINE_ARCH} == "sparc"
DISTNAME=	rarsparc
PKGNAME=	rar-2.01
SUPDISTFILES=	rarbsd.sfx
.endif
CATEGORIES=	archivers
NEED_VERSION=	1.324
MASTER_SITES=	ftp://rarsoft.ti.sk/pub/rar/
EXTRACT_SUFX=	.sfx

EXTRACT_CMD=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

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

pre-extract:
	@chmod a+x ${DISTDIR}/${DISTFILES}

post-extract:
	@chmod a-x ${DISTDIR}/${DISTFILES}
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

post-install:
	@echo '*** Note that this software is shareware.'
	@echo '*** You are required to register after 40 days of use.'

.include <bsd.port.mk>
