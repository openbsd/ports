# $OpenBSD: Makefile,v 1.39 2006/03/15 19:59:42 naddy Exp $

ONLY_FOR_ARCHS=	i386 sparc

.if ${MACHINE_ARCH} == "sparc" && !exists(/emul/svr4/usr/lib/libc.so.1)
IGNORE=		"requires Solaris shared libraries"
.endif

COMMENT=	"RAR archiver (binary port)"

DISTNAME=rar-2.0x

.if ${MACHINE_ARCH} == "i386"
DISTFILES=	rarbsd.sfx
PKGNAME=	rar-2.02
EMUL=		bsdos
.elif ${MACHINE_ARCH} == "sparc"
DISTFILES=	rarsparc.sfx
PKGNAME=	rar-2.01
EMUL=		svr4
.else
DISTFILES=
.endif

SUPDISTFILES=	rarsparc.sfx rarbsd.sfx

CATEGORIES=	archivers
MASTER_SITES=	${HOMEPAGE}/rar/ \
		ftp://ftp.netlab.sk/public/rarsoft/rar/

EXTRACT_CASES=	*.sfx) ${SUDO} chmod a+x ${FULLDISTDIR}/$$archive && \
			${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rarsoft.com/

# Restrictive
PERMIT_PACKAGE_CDROM=	"Shareware.  Requires registration."
PERMIT_PACKAGE_FTP=	"Shareware.  Requires registration."
PERMIT_DISTFILES_CDROM=	"Shareware.  Requires registration."
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}
SUBST_VARS+=	EMUL
SYSTRACE_SUBST_VARS=	FULLDISTDIR
SYSCTL=		${SUDO} sysctl -w kern.emul.${EMUL}

pre-extract:
	@sysctl -n kern.emul.${EMUL} > ${WRKDIR}/.emul_${EMUL}
	@${SYSCTL}=1

post-extract:
.if ${MACHINE_ARCH} == "sparc"
	@cd ${WRKSRC} && \
	mv RAR rar && mv UNRAR unrar && \
	mv DEFAULT.SFX default.sfx && mv Rar_FAQ.Txt Rar_FAQ.txt
.endif
	@${SYSCTL}=`cat ${WRKDIR}/.emul_${EMUL}`

DOCS=	Rar_FAQ.txt TechNote.Txt License.Txt Internet.Txt Rar.Txt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rar
	${INSTALL_DATA_DIR} ${PREFIX}/share/rar
	${INSTALL_PROGRAM} ${WRKSRC}/rar ${PREFIX}/bin/rar
	cd ${WRKSRC}; ${INSTALL_MAN} ${DOCS} ${PREFIX}/share/doc/rar
	${INSTALL_DATA} ${WRKSRC}/RarFiles.Lst ${PREFIX}/share/rar/rarfiles.lst
	${INSTALL_DATA} ${WRKSRC}/default.sfx ${PREFIX}/share/rar
	${INSTALL_DATA} ${WRKSRC}/Dos.SFX ${PREFIX}/share/rar/dos.sfx

NO_REGRESS=	Yes
.include <bsd.port.mk>
