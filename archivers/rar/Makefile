# $OpenBSD: Makefile,v 1.13 1999/09/06 17:35:05 brad Exp $

DISTNAME=       rarbsd
PKGNAME=        rar-2.02
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: Can not charge for distribution"
NO_PACKAGE=     Only unmodified original package can be distributed
EXTRACT_SUFX=
ONLY_FOR_ARCHS=	i386

NEED_VERSION=	1.111

MAINTAINER=     ports@openbsd.org

EXTRACT_CMD=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

NO_BUILD=	yes
NO_WRKSUBDIR=   yes

pre-extract:
	@${CHMOD} a+x ${DISTDIR}/${DISTFILES}

post-extract:
	@${CHMOD} a-x ${DISTDIR}/${DISTFILES}

do-install:
	@install -d -m 755 -o ${SHAREOWN} -g ${SHAREGRP} \
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

.include <bsd.port.mk>
