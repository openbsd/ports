# $OpenBSD: Makefile,v 1.21 2000/03/31 20:26:16 brad Exp $

DISTNAME=	rarbsd
PKGNAME=	rar-2.02
CATEGORIES=	archivers
NEED_VERSION=	1.234
MASTER_SITES=	ftp://rarsoft.ti.sk/pub/rar/
EXTRACT_SUFX=	.sfx

EXTRACT_CMD=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

ONLY_FOR_ARCHS=	i386

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"Shareware.  Requires registration."
PERMIT_PACKAGE_FTP=	"Shareware.  Requires registration."
PERMIT_DISTFILES_CDROM=	"Shareware.  Requires registration."
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

NO_CONFIGURE=	Yes
NO_PATCH=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

pre-extract:
	@chmod a+x ${DISTDIR}/${DISTFILES}

post-extract:
	@chmod a-x ${DISTDIR}/${DISTFILES}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rar
	${INSTALL_DATA_DIR} ${PREFIX}/share/rar
	${INSTALL_PROGRAM} ${WRKSRC}/rar ${PREFIX}/bin/rar
	${INSTALL_MAN} ${WRKSRC}/Rar.Txt ${PREFIX}/man/cat1/rar.1
	cd ${WRKSRC}; ${INSTALL_MAN} Rar_FAQ.txt TechNote.Txt License.Txt \
		Internet.Txt ${PREFIX}/share/doc/rar
	${INSTALL_DATA} ${WRKSRC}/RarFiles.Lst ${PREFIX}/share/rar/rarfiles.lst
	${INSTALL_DATA} ${WRKSRC}/default.sfx ${PREFIX}/share/rar/default.sfx
	${INSTALL_DATA} ${WRKSRC}/Dos.SFX ${PREFIX}/share/rar/dos.sfx

post-install:
	@echo '*** Note that this software is shareware.'
	@echo '*** You are required to register after 40 days of use.'

.include <bsd.port.mk>
