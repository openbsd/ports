# New ports collection makefile for:    rar
# Version required:     2.02
# Date created:         8 Jul 1998
# Whom:                 form
#
# $OpenBSD: Makefile,v 1.8 1998/10/20 08:39:43 form Exp $
#

DISTNAME=       rarbsd
PKGNAME=        rar-2.02
CATEGORIES=	archivers

ONLY_FOR_ARCHS=	i386
NO_CDROM=	"NOFEE: Can not charge for distribution"
NO_PACKAGE=     Only unmodified original package can be distributed

MAINTAINER=     form@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.creabel.com/pub/rar/
EXTRACT_SUFX=



NO_WRKSUBDIR=   yes
EXTRACT_CMD=
EXTRACT_BEFORE_ARGS=

pre-extract:
	chmod a+x ${DISTDIR}/${DISTFILES}

post-extract:
	chmod a-x ${DISTDIR}/${DISTFILES}

do-build:
	cd ${WRKSRC} && \
		for i in *.Txt *.Lst; do \
			${TR} -d '\015' < $$i > $$i.tmp; \
			${MV} $$i.tmp $$i; \
		done

do-install:
	install -d -m 755 -o ${SHAREOWN} -g ${SHAREGRP} \
		${PREFIX}/share/doc/rar ${PREFIX}/share/rar
	cd ${WRKSRC} && \
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
