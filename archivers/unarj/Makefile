# $OpenBSD: Makefile,v 1.7 2000/03/04 18:19:04 turan Exp $
# $FreeBSD: Makefile,v 1.12 1999/02/17 22:25:36 ache Exp $

DISTNAME=       unarj-2.43
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	May not charge
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	May not charge
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL} -d -m 755 -o $(SHAREOWN) -g ${SHAREGRP} \
		${PREFIX}/share/doc/unarj
	@cd ${WRKSRC}; ${INSTALL_PROGRAM} unarj ${PREFIX}/bin
	@cd ${WRKSRC}; ${INSTALL_DATA} unarj.doc technote.doc \
		${PREFIX}/share/doc/unarj

.include <bsd.port.mk>
