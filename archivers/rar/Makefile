# $OpenBSD: Makefile,v 1.19 2000/03/24 22:11:33 espie Exp $

DISTNAME=	rarbsd
PKGNAME=	rar-2.02
CATEGORIES=	archivers
NEED_VERSION=	1.191
MASTER_SITES=	ftp://rarsoft.ti.sk/pub/rar/ \
		ftp://ftp.cdrom.com/pub/sac/pack/
EXTRACT_SUFX=	.sfx

EXTRACT_CMD=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty


ONLY_FOR_ARCHS=	i386

NO_CDROM=	"NOFEE: Can not charge for distribution"
NO_PACKAGE=	"Only unmodified original package can be distributed"

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"Shareware.  Requires registration."
PERMIT_PACKAGE_FTP=	"Shareware.  Requires registration."
PERMIT_DISTFILES_CDROM=	"Shareware.  Requires registration."
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	yes
WRKDIST=	${WRKDIR}

pre-extract:
	@chmod a+x ${DISTDIR}/${DISTFILES}

post-extract:
	@chmod a-x ${DISTDIR}/${DISTFILES}

do-install:
	@${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/rar ${PREFIX}/share/rar
	@cd ${WRKSRC} && \
		${INSTALL_PROGRAM} rar ${PREFIX}/bin/rar && \
		${INSTALL_MAN} Rar.Txt ${PREFIX}/man/cat1/rar.1 && \
		${INSTALL_MAN} Rar_FAQ.txt TechNote.Txt License.Txt Internet.Txt \
			${PREFIX}/share/doc/rar && \
		${INSTALL_DATA} RarFiles.Lst \
			${PREFIX}/share/rar/rarfiles.lst && \
		${INSTALL_DATA} default.sfx \
			${PREFIX}/share/rar/default.sfx && \
		${INSTALL_DATA} Dos.SFX \
			${PREFIX}/share/rar/dos.sfx

post-install:
	@echo '*** Note that this software is shareware.'
	@echo '*** You are required to register after 40 days of use.'

.include <bsd.port.mk>
